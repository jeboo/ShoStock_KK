.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .parameter

    .prologue
    .line 1033
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 1034
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1035
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 11
    .parameter "selfChange"

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1038
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1040
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "emergency_mode"

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v10

    invoke-static {v5, v8, v7, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v6, :cond_5

    move v0, v6

    .line 1041
    .local v0, mEnabled:Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z
    invoke-static {v5, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 1044
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 1045
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1047
    .local v1, mSettingButtonParam:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_6

    .line 1048
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1054
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1058
    .end local v1           #mSettingButtonParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sFinderButton:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    .line 1059
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v8, 0x7f07008b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    move v8, v9

    :goto_2
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1063
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHasFlipSettings:Z

    if-eqz v5, :cond_4

    .line 1064
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v5, :cond_3

    .line 1065
    const/4 v4, 0x0

    .line 1066
    .local v4, topMargin:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1068
    .local v2, marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    if-nez v0, :cond_2

    .line 1069
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v5, :cond_8

    .line 1070
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c0093

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0c007c

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    add-int v4, v5, v8

    .line 1080
    :cond_2
    :goto_3
    invoke-virtual {v2, v7, v4, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1081
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1084
    .end local v2           #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4           #topMargin:I
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    if-eqz v5, :cond_4

    .line 1085
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    if-eqz v0, :cond_9

    :goto_4
    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_a

    :goto_5
    #setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 1091
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1092
    return-void

    .end local v0           #mEnabled:Z
    :cond_5
    move v0, v7

    .line 1040
    goto/16 :goto_0

    .line 1050
    .restart local v0       #mEnabled:Z
    .restart local v1       #mSettingButtonParam:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1051
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f0c0097

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_1

    .end local v1           #mSettingButtonParam:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_7
    move v8, v7

    .line 1059
    goto :goto_2

    .line 1074
    .restart local v2       #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v4       #topMargin:I
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v5, v5, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0c006f

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0c007b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    add-int v4, v5, v8

    goto :goto_3

    .end local v2           #marginParams:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4           #topMargin:I
    :cond_9
    move v9, v7

    .line 1085
    goto :goto_4

    :cond_a
    move v6, v7

    .line 1090
    goto :goto_5
.end method
