.class Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$5;
.super Ljava/lang/Object;
.source "MobileDataQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->onDisplayMobileDataOffAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 520
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$5;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;

    const/4 v1, 0x0

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setMobileDataEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->access$1200(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V

    .line 522
    return-void
.end method