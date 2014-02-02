.class Lcom/android/internal/policy/impl/GlobalActions$5$1$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions$5$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/policy/impl/GlobalActions$5$1;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions$5$1;)V
    .registers 2

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1$1;->this$2:Lcom/android/internal/policy/impl/GlobalActions$5$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 721
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1$1;->this$2:Lcom/android/internal/policy/impl/GlobalActions$5$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mDialog:Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$1200(Lcom/android/internal/policy/impl/GlobalActions;)Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1$1;->this$2:Lcom/android/internal/policy/impl/GlobalActions$5$1;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v2, v2, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1$1;->this$2:Lcom/android/internal/policy/impl/GlobalActions$5$1;

    iget v3, v3, Lcom/android/internal/policy/impl/GlobalActions$5$1;->val$disableExclusiveOptionsFlag:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->turnOffTalkBackExclusiveOptions(Landroid/content/Context;I)V

    .line 722
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1$1;->this$2:Lcom/android/internal/policy/impl/GlobalActions$5$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "enabled_accessibility_services"

    const-string v3, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 726
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1$1;->this$2:Lcom/android/internal/policy/impl/GlobalActions$5$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 728
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.talkback_off"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v0, "talk_back_off":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1$1;->this$2:Lcom/android/internal/policy/impl/GlobalActions$5$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$5;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    # getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/GlobalActions;->access$400(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 730
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$5$1$1;->this$2:Lcom/android/internal/policy/impl/GlobalActions$5$1;

    iget-object v1, v1, Lcom/android/internal/policy/impl/GlobalActions$5$1;->this$1:Lcom/android/internal/policy/impl/GlobalActions$5;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/GlobalActions$5;->changeStateFromPress(Z)V

    .line 731
    return-void
.end method
