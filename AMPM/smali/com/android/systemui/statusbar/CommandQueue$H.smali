.class final Lcom/android/systemui/statusbar/CommandQueue$H;
.super Landroid/os/Handler;
.source "CommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/CommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/CommandQueue$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/CommandQueue$H;-><init>(Lcom/android/systemui/statusbar/CommandQueue;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 319
    iget v8, p1, Landroid/os/Message;->what:I

    const/high16 v9, -0x1

    and-int v7, v8, v9

    .line 320
    .local v7, what:I
    sparse-switch v7, :sswitch_data_0

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 322
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xffff

    and-int v2, v0, v1

    .line 323
    .local v2, index:I
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getViewIndex(I)I

    move-result v3

    .line 324
    .local v3, viewIndex:I
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 326
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 327
    .local v5, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v4

    .line 328
    .local v4, old:Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v4, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 330
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_0

    .line 339
    .end local v4           #old:Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v5           #icon:Lcom/android/internal/statusbar/StatusBarIcon;
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->removeIcon(I)V

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;
    invoke-static {v1}, Lcom/android/systemui/statusbar/CommandQueue;->access$200(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/internal/statusbar/StatusBarIconList;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->removeIcon(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 348
    .end local v2           #index:I
    .end local v3           #viewIndex:I
    :sswitch_1
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;

    .line 349
    .local v6, ne:Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget-object v1, v6, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;->key:Landroid/os/IBinder;

    iget-object v8, v6, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v1, v8}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    goto/16 :goto_0

    .line 353
    .end local v6           #ne:Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    :sswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;

    .line 354
    .restart local v6       #ne:Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget-object v1, v6, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;->key:Landroid/os/IBinder;

    iget-object v8, v6, Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v0, v1, v8}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    goto/16 :goto_0

    .line 358
    .end local v6           #ne:Lcom/android/systemui/statusbar/CommandQueue$NotificationQueueEntry;
    :sswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->removeNotification(Landroid/os/IBinder;)V

    goto/16 :goto_0

    .line 362
    :sswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->disable(I)V

    goto/16 :goto_0

    .line 365
    :sswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandNotificationsPanel()V

    goto/16 :goto_0

    .line 368
    :sswitch_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateCollapsePanels(I)V

    goto/16 :goto_0

    .line 371
    :sswitch_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->animateExpandSettingsPanel()V

    goto/16 :goto_0

    .line 374
    :sswitch_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v8}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setSystemUiVisibility(II)V

    goto/16 :goto_0

    .line 377
    :sswitch_9
    iget-object v8, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v8}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_2

    :goto_1
    invoke-interface {v8, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->topAppWindowChanged(Z)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 380
    :sswitch_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v0, v8, v9}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setImeWindowStatus(Landroid/os/IBinder;II)V

    goto/16 :goto_0

    .line 383
    :sswitch_b
    iget-object v8, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v8}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v9

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-eqz v8, :cond_3

    move v8, v0

    :goto_2
    iget v10, p1, Landroid/os/Message;->arg2:I

    if-eqz v10, :cond_4

    :goto_3
    invoke-interface {v9, v8, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setHardKeyboardStatus(ZZ)V

    goto/16 :goto_0

    :cond_3
    move v8, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    .line 386
    :sswitch_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleRecentApps()V

    goto/16 :goto_0

    .line 389
    :sswitch_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->preloadRecentApps()V

    goto/16 :goto_0

    .line 392
    :sswitch_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->cancelPreloadRecentApps()V

    goto/16 :goto_0

    .line 395
    :sswitch_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v8}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setWindowState(II)V

    goto/16 :goto_0

    .line 399
    :sswitch_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->toggleNotificationPanel()V

    goto/16 :goto_0

    .line 404
    :sswitch_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setMaxBrightness(I)V

    goto/16 :goto_0

    .line 409
    :sswitch_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->showCallOnGoingView()V

    goto/16 :goto_0

    .line 412
    :sswitch_13
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->hideCallOnGoingView()V

    goto/16 :goto_0

    .line 417
    :sswitch_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v0}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->applyEDMPolicy()V

    goto/16 :goto_0

    .line 421
    :sswitch_15
    iget-object v8, p0, Lcom/android/systemui/statusbar/CommandQueue$H;->this$0:Lcom/android/systemui/statusbar/CommandQueue;

    #getter for: Lcom/android/systemui/statusbar/CommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
    invoke-static {v8}, Lcom/android/systemui/statusbar/CommandQueue;->access$300(Lcom/android/systemui/statusbar/CommandQueue;)Lcom/android/systemui/statusbar/CommandQueue$Callbacks;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    if-ne v9, v0, :cond_5

    :goto_4
    invoke-interface {v8, v0}, Lcom/android/systemui/statusbar/CommandQueue$Callbacks;->setTransGradationMode(Z)V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    goto :goto_4

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_2
        0x40000 -> :sswitch_3
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_5
        0x70000 -> :sswitch_6
        0x80000 -> :sswitch_7
        0x90000 -> :sswitch_8
        0xa0000 -> :sswitch_9
        0xb0000 -> :sswitch_a
        0xc0000 -> :sswitch_b
        0xd0000 -> :sswitch_c
        0xe0000 -> :sswitch_d
        0xf0000 -> :sswitch_e
        0x100000 -> :sswitch_f
        0x110000 -> :sswitch_11
        0x120000 -> :sswitch_12
        0x130000 -> :sswitch_13
        0x140000 -> :sswitch_10
        0x150000 -> :sswitch_14
        0x160000 -> :sswitch_15
    .end sparse-switch

    .line 324
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
