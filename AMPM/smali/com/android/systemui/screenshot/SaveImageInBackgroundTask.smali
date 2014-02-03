.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final PHOTO_EDITOR_CLASS_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching.PhotoRetouching"

.field private static final PHOTO_EDITOR_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.mimage.photoretouching"

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_SHARE_SUBJECT_TEMPLATE:Ljava/lang/String; = "Screenshot (%s)"

.field private static final TAG:Ljava/lang/String; = "SaveImageInBackgroundTask"

.field private static mTickerAddSpace:Z


# instance fields
.field mAm:Landroid/app/IActivityManager;

.field mContext:Landroid/content/Context;

.field final mForegroundToken:Landroid/os/IBinder;

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private mIsBasedLandscape:Z

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mScreenshotDir:Ljava/io/File;

.field mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;I)V
    .locals 19
    .parameter "context"
    .parameter "data"
    .parameter "nManager"
    .parameter "nId"

    .prologue
    .line 171
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 163
    new-instance v15, Landroid/os/Binder;

    invoke-direct {v15}, Landroid/os/Binder;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    .line 164
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    .line 172
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 175
    .local v12, r:Landroid/content/res/Resources;
    const-string v15, "ro.build.type"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "eng"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 176
    const/4 v15, 0x1

    sput-boolean v15, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    .line 182
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    move-object/from16 v16, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    const/16 v18, 0x1

    invoke-interface/range {v15 .. v18}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 183
    const-string v15, "SaveImageInBackgroundTask"

    const-string v16, "SaveImageInBackgroundTask setProcessForeground true"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 189
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v16, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct/range {v15 .. v16}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v16, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v17, v0

    invoke-direct/range {v16 .. v18}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v15 .. v16}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 190
    .local v7, imageDate:Ljava/lang/String;
    const-string v15, "Screenshot_%s.png"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v7, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 192
    new-instance v15, Ljava/io/File;

    sget-object v16, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v16

    const-string v17, "Screenshots"

    invoke-direct/range {v15 .. v17}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 194
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 197
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 198
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 199
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 201
    .local v6, iconSize:I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 202
    .local v13, shortSide:I
    :goto_2
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v15

    invoke-static {v13, v13, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 203
    .local v11, preview:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 204
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 205
    .local v10, paint:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 206
    .local v5, desat:Landroid/graphics/ColorMatrix;
    const/high16 v15, 0x3e80

    invoke-virtual {v5, v15}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 207
    new-instance v15, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v15, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v10, v15}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 208
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 209
    .local v8, matrix:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    sub-int v15, v13, v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v16, v0

    sub-int v16, v13, v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 211
    move-object/from16 v0, p2

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v15, v8, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 212
    const v15, 0x40ffffff

    invoke-virtual {v3, v15}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 213
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 215
    const/4 v15, 0x1

    invoke-static {v11, v6, v6, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 218
    .local v4, croppedIcon:Landroid/graphics/Bitmap;
    sget-boolean v15, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-nez v15, :cond_3

    const/4 v15, 0x1

    :goto_3
    sput-boolean v15, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    .line 219
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    .line 220
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 221
    new-instance v16, Landroid/app/Notification$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const v17, 0x7f0a003f

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    sget-boolean v15, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    if-eqz v15, :cond_4

    const-string v15, " "

    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    const v16, 0x7f0a0040

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    const v16, 0x7f0a0041

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v15

    const v16, 0x7f0200ba

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 229
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0c00c7

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 230
    .local v2, bigPictureHeight:I
    if-lez v2, :cond_0

    if-le v13, v2, :cond_0

    .line 231
    sub-int v15, v13, v2

    div-int/lit8 v14, v15, 0x2

    .line 232
    .local v14, startY:I
    const/4 v15, 0x0

    invoke-static {v11, v15, v14, v13, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 235
    .end local v14           #startY:I
    :cond_0
    new-instance v15, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v15}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v15, v11}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 237
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 239
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v15}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 240
    .local v9, n:Landroid/app/Notification;
    iget v15, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v15, v15, 0x20

    iput v15, v9, Landroid/app/Notification;->flags:I

    .line 241
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    move/from16 v0, p4

    invoke-virtual {v15, v0, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v15, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 248
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 251
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    const-string v16, "spengestureservice"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/smartclip/SpenGestureManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 253
    return-void

    .line 178
    .end local v2           #bigPictureHeight:I
    .end local v3           #c:Landroid/graphics/Canvas;
    .end local v4           #croppedIcon:Landroid/graphics/Bitmap;
    .end local v5           #desat:Landroid/graphics/ColorMatrix;
    .end local v6           #iconSize:I
    .end local v7           #imageDate:Ljava/lang/String;
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v9           #n:Landroid/app/Notification;
    .end local v10           #paint:Landroid/graphics/Paint;
    .end local v11           #preview:Landroid/graphics/Bitmap;
    .end local v13           #shortSide:I
    :cond_1
    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->DEBUG:Z

    goto/16 :goto_0

    .line 201
    .restart local v6       #iconSize:I
    .restart local v7       #imageDate:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    goto/16 :goto_2

    .line 218
    .restart local v3       #c:Landroid/graphics/Canvas;
    .restart local v4       #croppedIcon:Landroid/graphics/Bitmap;
    .restart local v5       #desat:Landroid/graphics/ColorMatrix;
    .restart local v8       #matrix:Landroid/graphics/Matrix;
    .restart local v10       #paint:Landroid/graphics/Paint;
    .restart local v11       #preview:Landroid/graphics/Bitmap;
    .restart local v13       #shortSide:I
    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 221
    :cond_4
    const-string v15, ""

    goto/16 :goto_4

    .line 184
    .end local v3           #c:Landroid/graphics/Canvas;
    .end local v4           #croppedIcon:Landroid/graphics/Bitmap;
    .end local v5           #desat:Landroid/graphics/ColorMatrix;
    .end local v6           #iconSize:I
    .end local v7           #imageDate:Ljava/lang/String;
    .end local v8           #matrix:Landroid/graphics/Matrix;
    .end local v10           #paint:Landroid/graphics/Paint;
    .end local v11           #preview:Landroid/graphics/Bitmap;
    .end local v13           #shortSide:I
    :catch_0
    move-exception v15

    goto/16 :goto_1
.end method

.method private getCurrentDegree()F
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 521
    iget-object v4, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 522
    .local v3, windowManager:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 523
    .local v1, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 525
    .local v2, displaySize:Landroid/graphics/Point;
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v4

    int-to-float v0, v4

    .line 526
    .local v0, degree:F
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 528
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x4000

    cmpl-float v4, v0, v4

    if-nez v4, :cond_3

    .line 529
    :cond_0
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_2

    .line 530
    iput-boolean v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    .line 541
    :cond_1
    :goto_0
    return v0

    .line 532
    :cond_2
    iput-boolean v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    goto :goto_0

    .line 534
    :cond_3
    const/high16 v4, 0x3f80

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_4

    const/high16 v4, 0x4040

    cmpl-float v4, v0, v4

    if-nez v4, :cond_1

    .line 535
    :cond_4
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_5

    .line 536
    iput-boolean v6, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    goto :goto_0

    .line 538
    :cond_5
    iput-boolean v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    goto :goto_0
.end method

.method private isComponentAvailable(Landroid/content/ComponentName;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 508
    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 510
    .local v1, pm:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 511
    const/4 v2, 0x1

    .line 516
    :cond_0
    :goto_0
    return v2

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 34
    .parameter "params"

    .prologue
    .line 257
    const-string v29, "SaveImageInBackgroundTask"

    const-string v30, "SaveImageInBackgroundTask setProcessForeground doInBackground"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_0

    const/16 v29, 0x0

    .line 409
    :goto_0
    return-object v29

    .line 259
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 261
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    move-object/from16 v30, v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v31

    const/16 v32, 0x0

    invoke-interface/range {v29 .. v32}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 262
    const-string v29, "SaveImageInBackgroundTask"

    const-string v30, "SaveImageInBackgroundTask doInBackground isCancelled setProcessForeground false"

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_6

    .line 265
    :goto_1
    const/16 v29, 0x0

    aget-object v29, p1, v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 266
    const/16 v29, 0x0

    aget-object v29, p1, v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 267
    const/16 v29, 0x0

    goto :goto_0

    .line 272
    :cond_1
    const/16 v29, -0x2

    invoke-static/range {v29 .. v29}, Landroid/os/Process;->setThreadPriority(I)V

    .line 274
    const/16 v29, 0x0

    aget-object v29, p1, v29

    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 275
    .local v6, context:Landroid/content/Context;
    const/16 v29, 0x0

    aget-object v29, p1, v29

    move-object/from16 v0, v29

    iget-object v14, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 276
    .local v14, image:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 277
    .local v20, r:Landroid/content/res/Resources;
    const/16 v16, 0x0

    .line 278
    .local v16, imageFile:Ljava/io/File;
    const/16 v18, 0x0

    .line 279
    .local v18, out:Ljava/io/OutputStream;
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v29

    const-string v30, "com.sec.feature.spen_usp"

    invoke-virtual/range {v29 .. v30}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    .line 283
    .local v13, hasSPenUspFeature:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->mkdirs()Z

    .line 287
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v29, v0

    const-wide/16 v31, 0x3e8

    div-long v8, v29, v31

    .line 289
    .local v8, dateSeconds:J
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 290
    .end local v16           #imageFile:Ljava/io/File;
    .local v17, imageFile:Ljava/io/File;
    :try_start_2
    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 291
    .end local v18           #out:Ljava/io/OutputStream;
    .local v19, out:Ljava/io/OutputStream;
    const/16 v29, 0x1

    :try_start_3
    sget-object v30, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v31, 0x64

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v19

    invoke-virtual {v14, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v30

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_6

    .line 292
    invoke-virtual/range {v19 .. v19}, Ljava/io/OutputStream;->flush()V

    .line 294
    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .local v28, values:Landroid/content/ContentValues;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    .line 296
    .local v22, resolver:Landroid/content/ContentResolver;
    const-string v29, "_data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string v29, "title"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v29, "_display_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v29, "datetaken"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v30, v0

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    const-string v29, "date_added"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 301
    const-string v29, "date_modified"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 302
    const-string v29, "mime_type"

    const-string v30, "image/png"

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v29, "width"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 304
    const-string v29, "height"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    const-string v29, "_size"

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->length()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v28 .. v30}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 306
    sget-object v29, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v26

    .line 309
    .local v26, uri:Landroid/net/Uri;
    new-instance v10, Landroid/content/Intent;

    const-string v29, "android.intent.action.DELETE"

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    .local v10, deleteIntent:Landroid/content/Intent;
    const-string v29, "FilePath"

    const-string v30, "%s/%s/%s"

    const/16 v31, 0x3

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    sget-object v33, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string v33, "Screenshots"

    aput-object v33, v31, v32

    const/16 v32, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    const-class v29, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    move-object/from16 v0, v29

    invoke-virtual {v10, v6, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v29, v0

    const v30, 0x7f02018c

    const v31, 0x1040650

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/high16 v33, 0x1000

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v6, v0, v10, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 322
    const-string v29, "%s/%s/"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    sget-object v32, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static/range {v32 .. v32}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    const/16 v31, 0x1

    const-string v32, "Screenshots"

    aput-object v32, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 326
    .local v15, imageDirPath:Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v29, "android.intent.action.SEND"

    move-object/from16 v0, v29

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v12, editIntent:Landroid/content/Intent;
    const-string v29, "FilePath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v29, "DirPath"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v29, "degree"

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getCurrentDegree()F

    move-result v30

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 330
    const-string v29, "isBasedLandscape"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    move/from16 v30, v0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    const-class v29, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    move-object/from16 v0, v29

    invoke-virtual {v12, v6, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 332
    const v29, 0x10008000

    move/from16 v0, v29

    invoke-virtual {v12, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v29, v0

    const v30, 0x7f02018d

    const v31, 0x1040af8

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/high16 v33, 0x1000

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v6, v0, v12, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 340
    new-instance v29, Ljava/text/SimpleDateFormat;

    const-string v30, "hh:mma, MMM dd, yyyy"

    invoke-direct/range {v29 .. v30}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    move-wide/from16 v31, v0

    invoke-direct/range {v30 .. v32}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v29 .. v30}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v25

    .line 342
    .local v25, subjectDate:Ljava/lang/String;
    const-string v29, "Screenshot (%s)"

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v25, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 343
    .local v24, subject:Ljava/lang/String;
    new-instance v23, Landroid/content/Intent;

    const-string v29, "android.intent.action.SEND"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v23, sharingIntent:Landroid/content/Intent;
    const-string v29, "image/png"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v29, "android.intent.extra.STREAM"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 346
    const-string v29, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    move-object/from16 v29, v0

    if-eqz v29, :cond_2

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/smartclip/SpenGestureManager;->getSmartClipDataFromCurrentScreen()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    move-result-object v21

    .line 351
    .local v21, repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 352
    .local v4, bundle:Landroid/os/Bundle;
    const-string v29, "repository"

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 353
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 357
    .end local v4           #bundle:Landroid/os/Bundle;
    .end local v21           #repository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :cond_2
    const/16 v29, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 358
    .local v5, chooserIntent:Landroid/content/Intent;
    const v29, 0x10008000

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    move-object/from16 v29, v0

    const v30, 0x7f02018e

    const v31, 0x10407cc

    move-object/from16 v0, v20

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/high16 v33, 0x1000

    move/from16 v0, v32

    move/from16 v1, v33

    invoke-static {v6, v0, v5, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v32

    invoke-virtual/range {v29 .. v32}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 365
    const/16 v29, 0x0

    aget-object v29, p1, v29

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 366
    const/16 v29, 0x0

    aget-object v29, p1, v29

    const/16 v30, 0x0

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 367
    const/16 v29, 0x0

    aget-object v29, p1, v29

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 370
    new-instance v7, Landroid/content/Intent;

    const-string v29, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_RECEIVER"

    move-object/from16 v0, v29

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v7, copyIntent:Landroid/content/Intent;
    const-string v29, "copyPath"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 376
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "file://"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 377
    .local v27, uriString:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v29, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static/range {v27 .. v27}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 379
    .local v3, actionIntent:Landroid/content/Intent;
    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 395
    .end local v3           #actionIntent:Landroid/content/Intent;
    .end local v5           #chooserIntent:Landroid/content/Intent;
    .end local v7           #copyIntent:Landroid/content/Intent;
    .end local v10           #deleteIntent:Landroid/content/Intent;
    .end local v12           #editIntent:Landroid/content/Intent;
    .end local v15           #imageDirPath:Ljava/lang/String;
    .end local v22           #resolver:Landroid/content/ContentResolver;
    .end local v23           #sharingIntent:Landroid/content/Intent;
    .end local v24           #subject:Ljava/lang/String;
    .end local v25           #subjectDate:Ljava/lang/String;
    .end local v26           #uri:Landroid/net/Uri;
    .end local v27           #uriString:Ljava/lang/String;
    .end local v28           #values:Landroid/content/ContentValues;
    :cond_3
    :goto_2
    if-eqz v19, :cond_8

    .line 397
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v18, v19

    .end local v19           #out:Ljava/io/OutputStream;
    .restart local v18       #out:Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .line 405
    .end local v8           #dateSeconds:J
    .end local v17           #imageFile:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    :cond_4
    :goto_3
    if-eqz v14, :cond_5

    .line 406
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 409
    :cond_5
    const/16 v29, 0x0

    aget-object v29, p1, v29

    goto/16 :goto_0

    .line 381
    .end local v16           #imageFile:Ljava/io/File;
    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v8       #dateSeconds:J
    .restart local v17       #imageFile:Ljava/io/File;
    .restart local v19       #out:Ljava/io/OutputStream;
    :cond_6
    :try_start_5
    const-string v29, "SaveImageInBackgroundTask"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Fail to create capture image file ("

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ")"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v29, 0x0

    aget-object v29, p1, v29

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 384
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_3

    .line 385
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 388
    :catch_0
    move-exception v11

    move-object/from16 v18, v19

    .end local v19           #out:Ljava/io/OutputStream;
    .restart local v18       #out:Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .line 391
    .end local v8           #dateSeconds:J
    .end local v17           #imageFile:Ljava/io/File;
    .local v11, e:Ljava/lang/Exception;
    .restart local v16       #imageFile:Ljava/io/File;
    :goto_4
    :try_start_6
    const-string v29, "SaveImageInBackgroundTask"

    const-string v30, "IOException-UnsupportedOperationException may be thrown if external storage is not"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/16 v29, 0x0

    aget-object v29, p1, v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 393
    const/16 v29, 0x0

    aget-object v29, p1, v29

    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 395
    if-eqz v18, :cond_4

    .line 397
    :try_start_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 398
    :catch_1
    move-exception v11

    .line 399
    const-string v29, "SaveImageInBackgroundTask"

    const-string v30, "IOException"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 398
    .end local v11           #e:Ljava/lang/Exception;
    .end local v16           #imageFile:Ljava/io/File;
    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v8       #dateSeconds:J
    .restart local v17       #imageFile:Ljava/io/File;
    .restart local v19       #out:Ljava/io/OutputStream;
    :catch_2
    move-exception v11

    .line 399
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v29, "SaveImageInBackgroundTask"

    const-string v30, "IOException"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v18, v19

    .end local v19           #out:Ljava/io/OutputStream;
    .restart local v18       #out:Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .line 400
    .end local v17           #imageFile:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    goto :goto_3

    .line 395
    .end local v8           #dateSeconds:J
    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v29

    :goto_5
    if-eqz v18, :cond_7

    .line 397
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 400
    :cond_7
    :goto_6
    throw v29

    .line 398
    :catch_3
    move-exception v11

    .line 399
    .restart local v11       #e:Ljava/lang/Exception;
    const-string v30, "SaveImageInBackgroundTask"

    const-string v31, "IOException"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 395
    .end local v11           #e:Ljava/lang/Exception;
    .end local v16           #imageFile:Ljava/io/File;
    .restart local v8       #dateSeconds:J
    .restart local v17       #imageFile:Ljava/io/File;
    :catchall_1
    move-exception v29

    move-object/from16 v16, v17

    .end local v17           #imageFile:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    goto :goto_5

    .end local v16           #imageFile:Ljava/io/File;
    .end local v18           #out:Ljava/io/OutputStream;
    .restart local v17       #imageFile:Ljava/io/File;
    .restart local v19       #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v29

    move-object/from16 v18, v19

    .end local v19           #out:Ljava/io/OutputStream;
    .restart local v18       #out:Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .end local v17           #imageFile:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    goto :goto_5

    .line 388
    .end local v8           #dateSeconds:J
    :catch_4
    move-exception v11

    goto :goto_4

    .end local v16           #imageFile:Ljava/io/File;
    .restart local v8       #dateSeconds:J
    .restart local v17       #imageFile:Ljava/io/File;
    :catch_5
    move-exception v11

    move-object/from16 v16, v17

    .end local v17           #imageFile:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    goto :goto_4

    .line 263
    .end local v6           #context:Landroid/content/Context;
    .end local v8           #dateSeconds:J
    .end local v13           #hasSPenUspFeature:Z
    .end local v14           #image:Landroid/graphics/Bitmap;
    .end local v16           #imageFile:Ljava/io/File;
    .end local v18           #out:Ljava/io/OutputStream;
    .end local v20           #r:Landroid/content/res/Resources;
    :catch_6
    move-exception v29

    goto/16 :goto_1

    .restart local v6       #context:Landroid/content/Context;
    .restart local v8       #dateSeconds:J
    .restart local v13       #hasSPenUspFeature:Z
    .restart local v14       #image:Landroid/graphics/Bitmap;
    .restart local v17       #imageFile:Ljava/io/File;
    .restart local v19       #out:Ljava/io/OutputStream;
    .restart local v20       #r:Landroid/content/res/Resources;
    :cond_8
    move-object/from16 v18, v19

    .end local v19           #out:Ljava/io/OutputStream;
    .restart local v18       #out:Ljava/io/OutputStream;
    move-object/from16 v16, v17

    .end local v17           #imageFile:Ljava/io/File;
    .restart local v16       #imageFile:Ljava/io/File;
    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 14
    .parameter "params"

    .prologue
    const/4 v13, 0x2

    const/high16 v12, 0x1000

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 414
    const-string v7, "SaveImageInBackgroundTask"

    const-string v8, "SaveImageInBackgroundTask setProcessForeground onPostExecute"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 417
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 418
    const-string v7, "SaveImageInBackgroundTask"

    const-string v8, "SaveImageInBackgroundTask isCancelled setProcessForeground false"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 421
    :goto_0
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 422
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 423
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    .line 505
    :goto_1
    return-void

    .line 427
    :cond_0
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 428
    .local v6, r:Landroid/content/res/Resources;
    iget v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v7, :cond_2

    .line 430
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    const v9, 0x7f0a0045

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/android/systemui/screenshot/GlobalScreenshot;->notifyScreenshotError(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;)V

    .line 498
    :cond_1
    :goto_2
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 499
    const-string v7, "SaveImageInBackgroundTask"

    const-string v8, "SaveImageInBackgroundTask setProcessForeground false"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 503
    :goto_3
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    .line 504
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    goto :goto_1

    .line 434
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v3, launchIntent:Landroid/content/Intent;
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v8, "image/png"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 438
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const v8, 0x7f0a0042

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f0a0043

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-static {v8, v10, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 445
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 446
    .local v4, n:Landroid/app/Notification;
    iget v7, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v7, v7, -0x21

    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 447
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationId:I

    invoke-virtual {v7, v8, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 449
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "edit_after_screen_capture"

    const/4 v9, -0x2

    invoke-static {v7, v8, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eqz v7, :cond_1

    .line 452
    iget-object v7, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 453
    .local v5, pM:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 454
    .local v1, directEditIntent:Landroid/content/Intent;
    const-string v7, "%s/%s/"

    new-array v8, v13, [Ljava/lang/Object;

    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    const-string v9, "Screenshots"

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, imageDirPath:Ljava/lang/String;
    if-eqz v5, :cond_3

    const-string v7, "com.sec.feature.spen_usp"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v13, :cond_3

    .line 459
    const/high16 v7, 0x1401

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 461
    const-string v7, "com.sec.spen.flashannotate"

    const-string v8, "com.sec.spen.flashannotate.FlashAnnotateActivity"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string v7, "degree"

    invoke-direct {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getCurrentDegree()F

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 464
    const-string v7, "isBasedLandscape"

    iget-boolean v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 465
    const-string v7, "savepath"

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    :goto_4
    :try_start_2
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v1, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 493
    :catch_0
    move-exception v7

    goto/16 :goto_2

    .line 467
    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    const-string v7, "com.sec.android.mimage.photoretouching"

    const-string v8, "com.sec.android.mimage.photoretouching.PhotoRetouching"

    invoke-direct {v0, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .local v0, cn:Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/ComponentName;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 470
    const-string v7, "android.intent.action.EDIT"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 471
    invoke-virtual {v1, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 472
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 473
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    const-string v8, "image/png"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    const-string v7, "degree"

    invoke-direct {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getCurrentDegree()F

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 475
    const-string v7, "isBasedLandscape"

    iget-boolean v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 476
    const-string v7, "savepath"

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4

    .line 479
    :cond_4
    const-string v7, "android.intent.action.SEND"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v7, "FilePath"

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    const-string v7, "DirPath"

    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v7, "degree"

    invoke-direct {p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->getCurrentDegree()F

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 483
    const-string v7, "isBasedLandscape"

    iget-boolean v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBasedLandscape:Z

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    const-string v7, "savepath"

    iget-object v8, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    iget-object v7, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const-class v8, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 487
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_4

    .line 500
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #directEditIntent:Landroid/content/Intent;
    .end local v2           #imageDirPath:Ljava/lang/String;
    .end local v3           #launchIntent:Landroid/content/Intent;
    .end local v4           #n:Landroid/app/Notification;
    .end local v5           #pM:Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v7

    goto/16 :goto_3

    .line 419
    .end local v6           #r:Landroid/content/res/Resources;
    :catch_2
    move-exception v7

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
