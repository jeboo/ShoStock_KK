.class Lcom/android/internal/policy/impl/GlobalActions$5;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V
    .registers 13
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .registers 3
    .param p1, "buttonOn"    # Z

    .prologue
    .line 785
    if-eqz p1, :cond_7

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_4
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 786
    return-void

    .line 785
    :cond_7
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_4
.end method

.method public isEnabled()Z
    .registers 4

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    :goto_15
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;->mState:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    .line 810
    const/4 v0, 0x1

    return v0

    .line 809
    :cond_19
    sget-object v0, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;->TurningOff:Lcom/android/internal/policy/impl/GlobalActions$ToggleAction$State;

    goto :goto_15
.end method

.method public onPress()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 675
    sget-boolean v0, Lcom/android/internal/policy/impl/GlobalActions;->SAFE_DEBUG:Z

    if-eqz v0, :cond_d

    .line 676
    const-string v0, "GlobalActions"

    const-string v1, "in onPress of TalkBack Toggle"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 678
    .local v2, "bIsEnable":Z
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->isTalkBackExclusiveOptionEnabled(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v8

    .line 679
    .local v8, "bundle_data":Landroid/os/Bundle;
    const-string v0, "is_enabled"

    invoke-virtual {v8, v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 680
    .local v3, "is_enabled":Z
    const-string v0, "dialog_content"

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 681
    .local v4, "disableExclusiveOptionsMessage":Ljava/lang/String;
    const-string v0, "option_flag"

    invoke-virtual {v8, v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 683
    .local v5, "disableExclusiveOptionsFlag":I
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mTalkBack ToggleAction() : disableExclusiveOptionsMessage is "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " disableExclusiveOptionsFlag"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1300(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v10

    .line 686
    .local v10, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040a8d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 687
    .local v6, "TalkbackTitle":Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 689
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    const v0, 0x1010355

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 690
    if-nez v2, :cond_10d

    .line 691
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040a95

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v6, v11, v12

    invoke-virtual {v0, v1, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 692
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    invoke-static {v0, v10}, Lcom/android/internal/policy/impl/GlobalActions;->access$1400(Lcom/android/internal/policy/impl/GlobalActions;Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 697
    :goto_ab
    invoke-virtual {v7, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 698
    const v11, 0x104000a

    new-instance v0, Lcom/android/internal/policy/impl/GlobalActions$5$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$5$1;-><init>(Lcom/android/internal/policy/impl/GlobalActions$5;ZZLjava/lang/String;I)V

    invoke-virtual {v7, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 758
    const/high16 v0, 0x1040000

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$5$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/GlobalActions$5$2;-><init>(Lcom/android/internal/policy/impl/GlobalActions$5;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 764
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 765
    .local v9, "dialog":Landroid/app/AlertDialog;
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mKeyguardShowing:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1500(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 766
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 770
    :goto_d9
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    new-instance v1, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    iget-object v11, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1602(Lcom/android/internal/policy/impl/GlobalActions;Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;)Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    .line 771
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    move-result-object v0

    iput-object v9, v0, Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;->dialog:Landroid/app/AlertDialog;

    .line 772
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialogReceiver:Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$1600(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$ConfirmDialogReceiver;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 773
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v9}, Lcom/android/internal/policy/impl/GlobalActions;->access$1702(Lcom/android/internal/policy/impl/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 774
    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/internal/policy/impl/GlobalActions;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 775
    const/4 v0, 0x1

    :try_start_105
    # setter for: Lcom/android/internal/policy/impl/GlobalActions;->sIsConfirming:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$202(Z)Z

    .line 776
    monitor-exit v1
    :try_end_109
    .catchall {:try_start_105 .. :try_end_109} :catchall_149

    .line 777
    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 778
    return-void

    .line 694
    .end local v9    # "dialog":Landroid/app/AlertDialog;
    :cond_10d
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040a96

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v6, v11, v12

    invoke-virtual {v0, v1, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 695
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040a97

    new-array v11, v13, [Ljava/lang/Object;

    aput-object v6, v11, v12

    invoke-virtual {v0, v1, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_ab

    .line 768
    .restart local v9    # "dialog":Landroid/app/AlertDialog;
    :cond_13f
    invoke-virtual {v9}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    goto :goto_d9

    .line 776
    :catchall_149
    move-exception v0

    :try_start_14a
    monitor-exit v1
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_149

    throw v0
.end method

.method onToggle(Z)V
    .registers 2
    .param p1, "on"    # Z

    .prologue
    .line 781
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 2

    .prologue
    .line 793
    const/4 v0, 0x0

    return v0
.end method

.method public showConditional()Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 797
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # invokes: Lcom/android/internal/policy/impl/GlobalActions;->isTalkbackAvailable()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$1800(Lcom/android/internal/policy/impl/GlobalActions;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 798
    const-string v0, "GlobalActions"

    const-string v2, " TalkBack was not installed "

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :goto_11
    return v1

    :cond_12
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "talkback_power_key_hold"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_27

    :goto_25
    move v1, v0

    goto :goto_11

    :cond_27
    move v0, v1

    goto :goto_25
.end method

.method public showDuringKeyguard()Z
    .registers 2

    .prologue
    .line 789
    const/4 v0, 0x1

    return v0
.end method
