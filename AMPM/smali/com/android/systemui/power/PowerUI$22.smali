.class Lcom/android/systemui/power/PowerUI$22;
.super Ljava/lang/Object;
.source "PowerUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerUI;->showOverheatShutdownNotice()V
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
    .line 1505
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$22;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1508
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$22;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v0}, Lcom/android/systemui/power/PowerUI;->dismissOverheatShutdownNotice()V

    .line 1509
    return-void
.end method
