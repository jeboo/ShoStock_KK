.class Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EdgeInspector"
.end annotation


# static fields
.field public static final BOTTOM:I = 0x2

.field public static final LEFT:I = 0x4

.field public static final NONE:I = 0x0

.field public static final RIGHT:I = 0x8

.field public static final TOP:I = 0x1


# instance fields
.field private mBound:Landroid/graphics/Rect;

.field private mDir:I

.field private mIsCandidate:Z

.field private mPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 1252
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1247
    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    .line 1250
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1253
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1254
    return-void
.end method


# virtual methods
.method public check(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x1

    .line 1288
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_56

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    if-le v0, p1, :cond_56

    .line 1289
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    .line 1297
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_29

    .line 1298
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    .line 1301
    :cond_29
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    if-nez v0, :cond_55

    .line 1302
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    if-le v0, p1, :cond_6e

    .line 1303
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1308
    :cond_3c
    :goto_3c
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    if-nez v0, :cond_55

    .line 1309
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v0, p2, :cond_7e

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-le p2, v0, :cond_7e

    .line 1310
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1317
    :cond_55
    :goto_55
    return-void

    .line 1290
    :cond_56
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_18

    .line 1291
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    goto :goto_18

    .line 1304
    :cond_6e
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_3c

    .line 1305
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    goto :goto_3c

    .line 1311
    :cond_7e
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ge v0, p2, :cond_55

    .line 1312
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    goto :goto_55
.end method

.method public clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1282
    iput v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    .line 1283
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1284
    return-void
.end method

.method public isCandidate()Z
    .registers 2

    .prologue
    .line 1278
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    return v0
.end method

.method public isDiagonal()Z
    .registers 2

    .prologue
    .line 1258
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1a

    :cond_c
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1a

    .line 1259
    :cond_18
    const/4 v0, 0x1

    .line 1261
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public isEdge()Z
    .registers 2

    .prologue
    .line 1271
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isEdge(I)Z
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 1275
    iget v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mDir:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "bound"    # Landroid/graphics/Rect;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mBound:Landroid/graphics/Rect;

    .line 1266
    iput-object p2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mPadding:Landroid/graphics/Rect;

    .line 1267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$EdgeInspector;->mIsCandidate:Z

    .line 1268
    return-void
.end method
