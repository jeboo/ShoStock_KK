.class Lcom/android/systemui/power/PowerUI$19;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showOverheatShutdownWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 1439
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$19;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$19;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/power/PowerUI;->mOverheatShutdownWarningDialog:Landroid/app/ProgressDialog;

    .line 1442
    return-void
.end method
