.class public Lcom/samsung/voiceshell/VoiceEngine;
.super Ljava/lang/Object;
.source "VoiceEngine.java"


# static fields
.field public static final AL_ENROLL:I = 0x0

.field public static final AL_VERIFY:I = 0x1

.field public static ROOT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "VoiceEngine"

.field public static final VR_RECOGNITON:I = 0x2

.field public static isEarMic:I

.field private static isRunningAdaptation:Z

.field private static isRunningVoiceEngine:Z

.field public static typeDefine:Ljava/lang/String;


# instance fields
.field private m_UBMpath:Ljava/lang/String;

.field public m_UBMpath_default:Ljava/lang/String;

.field private volatile m_engineMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 44
    sput-boolean v1, Lcom/samsung/voiceshell/VoiceEngine;->isRunningVoiceEngine:Z

    .line 45
    sput-boolean v1, Lcom/samsung/voiceshell/VoiceEngine;->isRunningAdaptation:Z

    .line 50
    const-string v0, "/data/data/com.vlingo.midas/"

    sput-object v0, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    .line 51
    const-string v0, "/data/data/com.vlingo.midas/typeDefine.bin"

    sput-object v0, Lcom/samsung/voiceshell/VoiceEngine;->typeDefine:Ljava/lang/String;

    .line 53
    sput v1, Lcom/samsung/voiceshell/VoiceEngine;->isEarMic:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_engineMode:I

    .line 47
    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    .line 48
    const-string v0, "/system/wakeupdata/samsung/models_16k_NoE.bin"

    iput-object v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath_default:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static SetDataPath(Ljava/lang/String;)V
    .registers 4
    .param p0, "strRootPath"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v0, "VoiceEngine"

    const-string v1, "secMM: SetDataPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sput-object p0, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "typeDefine.bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voiceshell/VoiceEngine;->typeDefine:Ljava/lang/String;

    .line 134
    const-string v0, "VoiceEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, ROOT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/VoiceEngine;->ROOT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string v0, "VoiceEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: SetDataPath, typeDefine : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/voiceshell/VoiceEngine;->typeDefine:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void
.end method

.method public static init()V
    .registers 4

    .prologue
    .line 112
    :try_start_0
    const-string v1, "VoiceEngine"

    const-string v2, "Trying to load libSamsungVoiceEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v1, "SamsungVoiceEngine"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 114
    const-string v1, "VoiceEngine"

    const-string v2, "Loading libSamsungVoiceEngine.so done"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_13} :catch_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_32

    .line 124
    :goto_13
    return-void

    .line 116
    :catch_14
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "VoiceEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 120
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_32
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VoiceEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WARNING: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method


# virtual methods
.method public native checkFileExistence(Ljava/lang/String;I[I)I
.end method

.method public native computeEnergyFrame([SII)I
.end method

.method public native consistencyCheckEnroll(Ljava/lang/String;S)I
.end method

.method public native functionAssignment(Ljava/lang/String;[II)I
.end method

.method public getIsRunningAdaptation()Z
    .registers 2

    .prologue
    .line 103
    monitor-enter p0

    .line 104
    :try_start_1
    sget-boolean v0, Lcom/samsung/voiceshell/VoiceEngine;->isRunningAdaptation:Z

    monitor-exit p0

    return v0

    .line 105
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getIsRunningVoiceEngine()Z
    .registers 2

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    :try_start_1
    sget-boolean v0, Lcom/samsung/voiceshell/VoiceEngine;->isRunningVoiceEngine:Z

    monitor-exit p0

    return v0

    .line 87
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_engineMode:I

    return v0
.end method

.method public native getModelStatus(Ljava/lang/String;S)I
.end method

.method public native getNoiseStats([J)I
.end method

.method public native getSpectrum([S[I)I
.end method

.method public native get_HANGOVER()I
.end method

.method public native initializeDRC()I
.end method

.method public native initializeEnroll(Ljava/lang/String;)I
.end method

.method public native initializeNS()I
.end method

.method public native initializeVerify(Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public native performContinuousAdaptation(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public processBuffer([SILjava/lang/String;[S[S)I
    .registers 14
    .param p1, "recordBuffer"    # [S
    .param p2, "readLength"    # I
    .param p3, "ROOT"    # Ljava/lang/String;
    .param p4, "frameLeft"    # [S
    .param p5, "CommandType"    # [S

    .prologue
    .line 59
    const/4 v7, 0x0

    .line 61
    .local v7, "iResult":I
    iget v0, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_engineMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 63
    sget v1, Lcom/samsung/voiceshell/VoiceEngine;->isEarMic:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/voiceshell/VoiceEngine;->processVerifyFrame(I[SILjava/lang/String;[S[S)I

    move-result v7

    .line 70
    :goto_12
    return v7

    .line 67
    :cond_13
    invoke-virtual {p0, p1, p2}, Lcom/samsung/voiceshell/VoiceEngine;->store1chPCM([SI)I

    move-result v7

    .line 68
    const/4 v7, 0x0

    goto :goto_12
.end method

.method public native processDRC([SI)I
.end method

.method public native processEPDFrame([SI)I
.end method

.method public native processEnroll(Ljava/lang/String;S[S)I
.end method

.method public native processNSFrame([SI)I
.end method

.method public native processVerify(I)I
.end method

.method public native processVerifyFrame(I[SILjava/lang/String;[S[S)I
.end method

.method public setAdaptationModelPath(Ljava/lang/String;)V
    .registers 5
    .param p1, "UBMpath"    # Ljava/lang/String;

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_1
    iput-object p1, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    .line 98
    const-string v0, "VoiceEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRunningAdaptation m_UBMpath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_UBMpath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    monitor-exit p0

    .line 100
    return-void

    .line 99
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public setIsRunningAdaptation(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .prologue
    .line 90
    monitor-enter p0

    .line 91
    :try_start_1
    sput-boolean p1, Lcom/samsung/voiceshell/VoiceEngine;->isRunningAdaptation:Z

    .line 92
    const-string v0, "VoiceEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRunningAdaptation mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    monitor-exit p0

    .line 94
    return-void

    .line 93
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public setIsRunningVoiceEngine(Z)V
    .registers 5
    .param p1, "mode"    # Z

    .prologue
    .line 79
    monitor-enter p0

    .line 80
    :try_start_1
    sput-boolean p1, Lcom/samsung/voiceshell/VoiceEngine;->isRunningVoiceEngine:Z

    .line 81
    const-string v0, "VoiceEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRunningVoiceEngine mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    monitor-exit p0

    .line 83
    return-void

    .line 82
    :catchall_1d
    move-exception v0

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/samsung/voiceshell/VoiceEngine;->m_engineMode:I

    .line 74
    return-void
.end method

.method public native setModelStatus(Ljava/lang/String;IS)I
.end method

.method public native startVerify()I
.end method

.method public native store1chPCM([SI)I
.end method

.method public native terminateEnroll()I
.end method

.method public native terminateVerify()I
.end method
