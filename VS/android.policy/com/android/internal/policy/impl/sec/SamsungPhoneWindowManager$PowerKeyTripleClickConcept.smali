.class Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerKeyTripleClickConcept"
.end annotation


# static fields
.field private static final TAG_PKDC:Ljava/lang/String; = "PowerKeyTripleClick"


# instance fields
.field private final DEBUG:Z

.field private mCheckPowerKeyTripleClick:Ljava/lang/Runnable;

.field private mPowerKeyActionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V
    .registers 3

    .prologue
    .line 2701
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    .line 2683
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->DEBUG:Z

    .line 2686
    new-instance v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept$1;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mCheckPowerKeyTripleClick:Ljava/lang/Runnable;

    .line 2702
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;
    .param p2, "x1"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$1;

    .prologue
    .line 2681
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;-><init>(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;
    .param p1, "x1"    # I

    .prologue
    .line 2681
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->addAction(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    .prologue
    .line 2681
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->isTripleClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;

    .prologue
    .line 2681
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->reset()V

    return-void
.end method

.method private addAction(I)V
    .registers 6
    .param p1, "action"    # I

    .prologue
    .line 2705
    monitor-enter p0

    .line 2707
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    :try_start_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_e

    .line 2708
    monitor-exit p0

    .line 2723
    :goto_d
    return-void

    .line 2714
    :cond_e
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2716
    if-nez p1, :cond_24

    .line 2720
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->this$0:Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mCheckPowerKeyTripleClick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2722
    :cond_24
    monitor-exit p0

    goto :goto_d

    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v0
.end method

.method private isTripleClick()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2730
    monitor-enter p0

    .line 2731
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x6

    if-lt v0, v3, :cond_69

    .line 2732
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_69

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_69

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    const/4 v3, 0x4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_69

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_69

    .line 2741
    monitor-exit p0

    move v0, v1

    .line 2748
    :goto_68
    return v0

    .line 2744
    :cond_69
    monitor-exit p0

    move v0, v2

    .line 2748
    goto :goto_68

    .line 2744
    :catchall_6c
    move-exception v0

    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6c

    throw v0
.end method

.method private reset()V
    .registers 2

    .prologue
    .line 2755
    monitor-enter p0

    .line 2756
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/SamsungPhoneWindowManager$PowerKeyTripleClickConcept;->mPowerKeyActionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2760
    monitor-exit p0

    .line 2761
    return-void

    .line 2760
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
