.class final Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickLaunchButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 1191
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1191
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 1196
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #calls: Lcom/android/systemui/recent/RecentsPanelView;->isTaskManagerInstalled()Z
    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$1500(Lcom/android/systemui/recent/RecentsPanelView;)Z

    move-result v4

    .line 1198
    .local v4, useTaskManager:Z
    if-eqz v4, :cond_0

    const-string v1, "com.sec.android.app.taskmanager"

    .line 1200
    .local v1, PACKAGE_NAME:Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    const-string v0, "com.sec.android.app.taskmanager.activity.TaskManagerActivity"

    .line 1203
    .local v0, CLASS_NAME:Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1204
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 1206
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1207
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1208
    const v5, 0x10004000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1209
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1211
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$1600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1212
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v5, :cond_2

    .line 1213
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;
    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$1300(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/IRecentsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoBack()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    .end local v3           #intent:Landroid/content/Intent;
    :goto_2
    return-void

    .line 1198
    .end local v0           #CLASS_NAME:Ljava/lang/String;
    .end local v1           #PACKAGE_NAME:Ljava/lang/String;
    :cond_0
    const-string v1, "com.sec.android.app.controlpanel"

    goto :goto_0

    .line 1200
    .restart local v1       #PACKAGE_NAME:Ljava/lang/String;
    :cond_1
    const-string v0, "com.sec.android.app.controlpanel.activity.JobManagerActivity"

    goto :goto_1

    .line 1215
    .restart local v0       #CLASS_NAME:Ljava/lang/String;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;
    invoke-static {v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$1300(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/IRecentsUI;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoHome()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1218
    .end local v3           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1219
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const-string v5, "RecentsPanelView"

    const-string v6, "Activity Not Found"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
