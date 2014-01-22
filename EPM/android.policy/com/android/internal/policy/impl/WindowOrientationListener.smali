.class public abstract Lcom/android/internal/policy/impl/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;,
        Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;,
        Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;
    }
.end annotation


# static fields
.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z

.field private static mbResultFaceDectection:Z

.field private static msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;

.field private static sCurrentAppAngle:I

.field private static sCurrentAppOrientation:I

.field private static sCurrentRotation:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentRotation:I

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mRate:I

.field private mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUsedautorotioansensor:Z

.field private mbSContext:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, -0x1

    .line 64
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    .line 67
    sput v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 68
    sput v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentRotation:I

    .line 89
    sput v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 106
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 107
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rate"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    .line 80
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 123
    const-string v1, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput-object p2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 126
    .local v0, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    .line 127
    const-string v1, "WindowOrientationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mbSContext : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 129
    sput-boolean v5, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 131
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v1, :cond_66

    .line 133
    const-string v1, "WindowOrientationListener"

    const-string v2, "++SContextListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v1, "scontext"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 135
    new-instance v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    .line 136
    const-string v1, "WindowOrientationListener"

    const-string v2, "--SContextListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :goto_65
    return-void

    .line 140
    :cond_66
    const-string v1, "WindowOrientationListener"

    const-string v2, "++SensorEventListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 142
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    .line 143
    iput p3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    .line 145
    if-ne p3, v6, :cond_80

    .line 146
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    .line 147
    :cond_80
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    .line 154
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v1, v4, :cond_91

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x10016

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 158
    :cond_91
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_99

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-nez v1, :cond_a3

    .line 160
    :cond_99
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 161
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    .line 164
    :cond_a3
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_b2

    .line 166
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v1, v4, :cond_ba

    .line 167
    new-instance v1, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    .line 174
    :cond_b2
    :goto_b2
    const-string v1, "WindowOrientationListener"

    const-string v2, "--SensorEventListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 170
    :cond_ba
    const-string v1, "WindowOrientationListener"

    const-string v2, "++++SensorEventListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v1, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_b2
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()I
    .registers 1

    .prologue
    .line 62
    sget v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I

    return v0
.end method

.method static synthetic access$402(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 62
    sput p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/WindowOrientationListener;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    return v0
.end method

.method static synthetic access$600()Lcom/sec/android/smartface/SmartFaceManager;
    .registers 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager;
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/smartface/SmartFaceManager;

    .prologue
    .line 62
    sput-object p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;

    return-object p0
.end method

.method static synthetic access$700()Z
    .registers 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static synthetic access$800()I
    .registers 1

    .prologue
    .line 62
    sget v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/WindowOrientationListener;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static getCurrentRotation()I
    .registers 1

    .prologue
    .line 333
    sget v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentRotation:I

    return v0
.end method

.method public static setCurrentAppOrientation(I)V
    .registers 1
    .param p0, "appOrientation"    # I

    .prologue
    .line 326
    sput p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 327
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 299
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v2, :cond_a

    .line 301
    monitor-exit v1

    .line 303
    :goto_9
    return v0

    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_13

    :goto_e
    monitor-exit v1

    goto :goto_9

    .line 305
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v0

    .line 303
    :cond_13
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public disable()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 226
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 227
    :try_start_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_12

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    const/4 v3, 0x6

    invoke-virtual {v0, v2, v3}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 247
    :cond_10
    :goto_10
    monitor-exit v1

    .line 248
    :goto_11
    return-void

    .line 232
    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_22

    .line 233
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    monitor-exit v1

    goto :goto_11

    .line 247
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v0

    .line 236
    :cond_22
    :try_start_22
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-ne v0, v3, :cond_10

    .line 237
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_35
    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 241
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v0, v3, :cond_41

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->access$100(Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V

    .line 244
    :cond_41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    goto :goto_10

    .line 238
    :cond_45
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
    :try_end_47
    .catchall {:try_start_22 .. :try_end_47} :catchall_1f

    goto :goto_35
.end method

.method public enable()V
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 183
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 184
    :try_start_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v0, :cond_13

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;II)Z

    .line 219
    :cond_11
    :goto_11
    monitor-exit v1

    .line 220
    :goto_12
    return-void

    .line 199
    :cond_13
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_26

    .line 201
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v1

    goto :goto_12

    .line 219
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v0

    .line 204
    :cond_26
    :try_start_26
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_11

    .line 205
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_35

    .line 206
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_35
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eq v0, v3, :cond_53

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->access$000(Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;)V

    .line 213
    :goto_3e
    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_46
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    goto :goto_11

    .line 211
    :cond_53
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->access$100(Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V

    goto :goto_3e

    .line 213
    :cond_59
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
    :try_end_5b
    .catchall {:try_start_26 .. :try_end_5b} :catchall_23

    goto :goto_46
.end method

.method public getProposedRotation()I
    .registers 6

    .prologue
    const/4 v0, -0x1

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbSContext:Z

    if-eqz v2, :cond_10

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSContextAutoRotationListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->getProposedRotation()I

    move-result v0

    monitor-exit v1

    .line 285
    :goto_f
    return v0

    .line 276
    :cond_10
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-eqz v2, :cond_4b

    .line 277
    sget-boolean v2, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 279
    const-string v2, "WindowOrientationListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProposedRotation facedetection :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    monitor-exit v1

    goto :goto_f

    .line 288
    :catchall_35
    move-exception v0

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw v0

    .line 282
    :cond_38
    :try_start_38
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSOSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$ScreenOrientationEventListenerImpl;->getProposedRotationLocked()I

    move-result v0

    :goto_42
    monitor-exit v1

    goto :goto_f

    :cond_44
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotationLocked()I

    move-result v0

    goto :goto_42

    .line 285
    :cond_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_38 .. :try_end_4c} :catchall_35

    goto :goto_f
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public setCurrentRotation(I)V
    .registers 4
    .param p1, "rotation"    # I

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_3
    iput p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    .line 258
    sput p1, Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentRotation:I

    .line 259
    monitor-exit v1

    .line 260
    return-void

    .line 259
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public setFaceDetectionResult(Z)V
    .registers 2
    .param p1, "ResultFaceDectection"    # Z

    .prologue
    .line 292
    sput-boolean p1, Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 293
    return-void
.end method
