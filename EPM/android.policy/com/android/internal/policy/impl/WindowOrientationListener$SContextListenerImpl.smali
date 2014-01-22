.class final Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SContextListenerImpl"
.end annotation


# static fields
.field private static scontextRotation:I


# instance fields
.field private final mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V
    .registers 2
    .param p1, "orientationListener"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    .line 346
    return-void
.end method


# virtual methods
.method public getProposedRotation()I
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 349
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSContextAutoRotationListener.getProposedRotation, mbResultFaceDectection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v3

    if-ne v3, v6, :cond_78

    .line 351
    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 352
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 353
    .local v0, "disp":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 354
    .local v1, "rotation":I
    packed-switch v1, :pswitch_data_96

    .line 372
    const/4 v3, -0x1

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$402(I)I

    .line 376
    :goto_44
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSContextAutoRotationListener.getProposedRotation, sCurrentAppAngle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$400()I

    move-result v3

    .line 381
    .end local v0    # "disp":Landroid/view/Display;
    .end local v1    # "rotation":I
    .end local v2    # "wm":Landroid/view/WindowManager;
    :goto_64
    return v3

    .line 357
    .restart local v0    # "disp":Landroid/view/Display;
    .restart local v1    # "rotation":I
    .restart local v2    # "wm":Landroid/view/WindowManager;
    :pswitch_65
    const/4 v3, 0x0

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$402(I)I

    goto :goto_44

    .line 361
    :pswitch_6a
    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$402(I)I

    goto :goto_44

    .line 365
    :pswitch_6e
    const/4 v3, 0x2

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$402(I)I

    goto :goto_44

    .line 369
    :pswitch_73
    const/4 v3, 0x3

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->sCurrentAppAngle:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$402(I)I

    goto :goto_44

    .line 380
    .end local v0    # "disp":Landroid/view/Display;
    .end local v1    # "rotation":I
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_78
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSContextAutoRotationListener.getProposedRotation, Rotation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    sget v3, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    goto :goto_64

    .line 354
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_65
        :pswitch_6a
        :pswitch_6e
        :pswitch_73
    .end packed-switch
.end method

.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 386
    iget-object v3, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 387
    .local v3, "scontext":Landroid/hardware/scontext/SContext;
    invoke-virtual {v3}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_c4

    .line 437
    :cond_b
    :goto_b
    return-void

    .line 389
    :pswitch_c
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getAutoRotationContext()Landroid/hardware/scontext/SContextAutoRotation;

    move-result-object v0

    .line 390
    .local v0, "autoRotationContext":Landroid/hardware/scontext/SContextAutoRotation;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextAutoRotation;->getAngle()I

    move-result v6

    sput v6, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    .line 391
    const-string v6, "WindowOrientationListener"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSContextAutoRotationListener.onSContextChanged, Rotation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget v6, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$500(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v7

    if-eq v6, v7, :cond_b

    sget v6, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    if-ltz v6, :cond_b

    .line 396
    iget-object v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "intelligent_rotation_mode"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_61

    move v2, v4

    .line 398
    .local v2, "intelligent_rotation_enabled":Z
    :goto_52
    if-nez v2, :cond_63

    .line 399
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 400
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    sget v5, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_b

    .end local v2    # "intelligent_rotation_enabled":Z
    :cond_61
    move v2, v5

    .line 396
    goto :goto_52

    .line 404
    .restart local v2    # "intelligent_rotation_enabled":Z
    :cond_63
    const/4 v1, 0x0

    .line 405
    .local v1, "bFaceDetected":Z
    const-string v6, "WindowOrientationListener"

    const-string v7, "fd ++ "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$500(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_ac

    .line 409
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v6

    if-nez v6, :cond_81

    .line 410
    invoke-static {}, Lcom/sec/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v6

    # setter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;
    invoke-static {v6}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$602(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager;

    .line 412
    :cond_81
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v6

    if-eqz v6, :cond_95

    .line 413
    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->msfforSContextRotation:Lcom/sec/android/smartface/SmartFaceManager;
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$600()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$500(Lcom/android/internal/policy/impl/WindowOrientationListener;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/android/smartface/SmartFaceManager;->checkForSmartRotation(I)Z

    move-result v1

    .line 421
    :cond_95
    :goto_95
    if-ne v1, v4, :cond_b6

    .line 422
    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v5, v4}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 423
    const-string v4, "WindowOrientationListener"

    const-string v5, "detected face, skip rotation  "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :goto_a3
    const-string v4, "WindowOrientationListener"

    const-string v5, "fd -- "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 416
    :cond_ac
    iget-object v6, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    # getter for: Lcom/android/internal/policy/impl/WindowOrientationListener;->mbResultFaceDectection:Z
    invoke-static {}, Lcom/android/internal/policy/impl/WindowOrientationListener;->access$200()Z

    move-result v6

    if-ne v6, v4, :cond_95

    .line 417
    const/4 v1, 0x1

    goto :goto_95

    .line 426
    :cond_b6
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->setFaceDetectionResult(Z)V

    .line 427
    iget-object v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->mOrientationListener:Lcom/android/internal/policy/impl/WindowOrientationListener;

    sget v5, Lcom/android/internal/policy/impl/WindowOrientationListener$SContextListenerImpl;->scontextRotation:I

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/WindowOrientationListener;->onProposedRotationChanged(I)V

    goto :goto_a3

    .line 387
    nop

    :pswitch_data_c4
    .packed-switch 0x6
        :pswitch_c
    .end packed-switch
.end method
