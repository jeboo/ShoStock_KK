.class final Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;
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
    name = "OnClickLaunchGoogleButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;)V
    .locals 0
    .parameter

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1224
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1229
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1230
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    .line 1232
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1800(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/recent/RecentsPanelView;->access$1700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Landroid/content/Context;ZI)Landroid/content/Intent;

    move-result-object v1

    .line 1234
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 1235
    const v2, 0x10004000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1237
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1900(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    const/4 v5, -0x2

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1240
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseRecentsTrayConcept:Z

    if-eqz v2, :cond_1

    .line 1241
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1300(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/IRecentsUI;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoBack()V

    .line 1248
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1243
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchGoogleButton;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    #getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsCallbacks:Lcom/android/systemui/recent/IRecentsUI;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$1300(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/IRecentsUI;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/recent/IRecentsUI;->dismissAndGoHome()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1245
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1246
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "RecentsPanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
