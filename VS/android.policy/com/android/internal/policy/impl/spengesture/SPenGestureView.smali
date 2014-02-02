.class public Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
.super Landroid/widget/FrameLayout;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;,
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;,
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    }
.end annotation


# static fields
.field private static final CONTROL_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.action.CONTROL_SPEN_GESTURE_VIEW"

.field private static final DEBUG:Z = false

.field private static final ESTIMATE_INVALID_VALUE:I = -0x1

.field private static final EXTRA_ENABLE_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.extra.enable_spengestureview"

.field private static final GESTURE_EFFECT_BACK:S = 0x1s

.field private static final GESTURE_EFFECT_MENU:S = 0x0s

.field private static final GESTURE_EFFECT_QUICKCOMMAND:S = 0x2s

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MEDIA_SCANNER_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x64

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x4

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s/%s"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE_FOR_ANIMATION:Ljava/lang/String; = "%s/%s/tmp%s"

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

.field private static final TAG:Ljava/lang/String; = "SPenGesture"


# instance fields
.field private final BROADCAST_NONE:I

.field private final BROADCAST_VIDEOPLAYER_PAUSE:I

.field private final BROADCAST_VIDEOPLAYER_PLAY:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

.field private final ESTIMATE_CROPIMAGE_MARGIN:I

.field private final ESTIMATE_END_CIRCLE_RADIUS:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

.field private final ESTIMATE_MARGIN_CLOSED_CURVE:I

.field private final ESTIMATE_START_CIRCLE_RADIUS:I

.field private final ESTIMATE_STROKE_WIDTH:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

.field private final GESTURE_RECOGNITION_MIN_DISTANCE:I

.field private final MSG_CROPPING_IMG_SAVE:S

.field private final MSG_FINISH_LOADING_ANIMATION:S

.field private final MSG_START_LOADING_ANIMATION:S

.field private final MSG_SUGGESTION_SERVICE_START:S

.field private mActivePointerId:I

.field private mBootCompleted:Z

.field private mBrType:I

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private final mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

.field private final mCirclePaintWhite:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCropBitmap:Landroid/graphics/Bitmap;

.field private mCropBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCropHandler:Landroid/os/Handler;

.field private mCropImageHeight:I

.field private mCropImageWidth:I

.field private mCropTempBitmap:Landroid/graphics/Bitmap;

.field private mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mCurrentDisplayHeight:I

.field private mCurrentDisplayWidth:I

.field private mDirectionHandler:Landroid/os/Handler;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayHeightForMatrix:I

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayRoateChanged:Z

.field private mDisplayRoateDegress:I

.field private mDisplayWidthForMatrix:I

.field private mDoubleTapIntent:Landroid/content/Intent;

.field private mEnableCheckClosedCurve:Z

.field private mEndPointX:F

.field private mEndPointY:F

.field private mExistOldCoords:Z

.field private mFinishSaveImg:Z

.field private mFirstIntersectionPointLast:I

.field private mFirstIntersectionPointPrev:I

.field private mFirstIntersectionPointX:I

.field private mFirstIntersectionPointY:I

.field private mFirstStartPointX:I

.field private mFirstStartPointY:I

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureEffectImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureEffectImgView:Landroid/widget/ImageView;

.field mGesturePad:Ljava/lang/Runnable;

.field private mGesturePadBlockTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturePadIntent:Landroid/content/Intent;

.field mHandler:Landroid/os/Handler;

.field private mHeaderBottom:I

.field private mImageFilePath:Ljava/lang/String;

.field private mImageFilePathForAnimation:Ljava/lang/String;

.field private mImageUri:Landroid/net/Uri;

.field private mImageUriForAnimation:Landroid/net/Uri;

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsClosedCurve:Z

.field private mIsEnableDoubleTapOnLockscreen:Z

.field private mIsEnabledHapticFeedback:Z

.field private mIsFirstMediaScan:Z

.field private mIsFirstPointer:Z

.field private mIsKeyguardOn:Z

.field private mIsLastPointer:Z

.field private mIsLiveCropThread:Z

.field private mIsLiveGlanceView:Z

.field private mIsLiveScreencapture:Z

.field private mIsPhone:Z

.field private mIsSendingBootMsg:Z

.field private mIsShowingGestureEffect:Z

.field private mIsStartingSuggestionService:Z

.field private mIsUsablePath:Z

.field private mIsUsableSecondPath:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLoadingAniImgView:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressIntent:Landroid/content/Intent;

.field private mMaxCoordX:I

.field private mMaxCoordXForIntent:I

.field private mMaxCoordY:I

.field private mMaxCoordYForIntent:I

.field private mMaxNumPointers:I

.field mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

.field private mMedianValueForGesturePosX:I

.field private mMedianValueForGesturePosY:I

.field private mMinCoordX:I

.field private mMinCoordXForIntent:I

.field private mMinCoordY:I

.field private mMinCoordYForIntent:I

.field private mNewCoordsX:F

.field private mNewCoordsY:F

.field private mNumColsedCurves:I

.field private mNumberOfAddTrace:I

.field private mOldCoordsX:F

.field private mOldCoordsY:F

.field private mOutofVerticalThresholdToUp:Z

.field private mPathOfCurve:Landroid/graphics/Path;

.field private mPathOfCurveForDrawing:Landroid/graphics/Path;

.field private final mPathPaintWhite:Landroid/graphics/Paint;

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCoordY:I

.field private mSPenGestureCropDispatchThread:Ljava/lang/Thread;

.field private mSPenGestureEventDispatchThread:Ljava/lang/Thread;

.field private mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field mScreenCaptureOn:Z

.field private mSecondIntersectionPointLast:I

.field private mSecondIntersectionPointPrev:I

.field private mSecondIntersectionPointX:I

.field private mSecondIntersectionPointY:I

.field private mSecondPathOfCurve:Landroid/graphics/Path;

.field private mStartPointX:F

.field private mStartPointXForCircle:F

.field private mStartPointY:F

.field private mStartPointYForCircle:F

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private mVerticalMovingSlop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 503
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 149
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    .line 150
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBootCompleted:Z

    .line 160
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 162
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 164
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z

    .line 167
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 172
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    .line 173
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 175
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    .line 176
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 179
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenCaptureOn:Z

    .line 182
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 190
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    .line 191
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    .line 194
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    .line 196
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 197
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    .line 198
    new-instance v12, Ljava/util/ArrayList;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "com.sec.android.gesturepad"

    aput-object v15, v13, v14

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    .line 203
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_STROKE_WIDTH:I

    .line 204
    const/16 v12, 0x320

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

    .line 205
    const/16 v12, 0x500

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

    .line 206
    const/16 v12, 0x12c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

    .line 207
    const/16 v12, 0x12c

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

    .line 210
    const/16 v12, 0x8

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_START_CIRCLE_RADIUS:I

    .line 211
    const/4 v12, 0x4

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_END_CIRCLE_RADIUS:I

    .line 212
    const/16 v12, 0x14

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    .line 214
    const/16 v12, 0xa

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CROPIMAGE_MARGIN:I

    .line 219
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-short v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_START_LOADING_ANIMATION:S

    .line 220
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput-short v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_FINISH_LOADING_ANIMATION:S

    .line 223
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_NONE:I

    .line 224
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_VIDEOPLAYER_PAUSE:I

    .line 225
    const/4 v12, 0x2

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_VIDEOPLAYER_PLAY:I

    .line 228
    const/16 v12, 0x32

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MIN_DISTANCE:I

    .line 229
    const/16 v12, 0x320

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE:I

    .line 230
    const/16 v12, 0x4b0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

    .line 275
    new-instance v12, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v12}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 276
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    .line 277
    new-instance v12, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v12}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 381
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    .line 383
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMedianValueForGesturePosX:I

    .line 384
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMedianValueForGesturePosY:I

    .line 410
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    .line 411
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 412
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 413
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 414
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    .line 415
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 416
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    .line 417
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 422
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 423
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUri:Landroid/net/Uri;

    .line 424
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 426
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    .line 427
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-short v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_SUGGESTION_SERVICE_START:S

    .line 428
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-short v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_CROPPING_IMG_SAVE:S

    .line 433
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 435
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 448
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$2;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    .line 469
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    .line 470
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    .line 777
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$5;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    .line 844
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$6;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 876
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    .line 504
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    .line 505
    new-instance v12, Landroid/app/Instrumentation;

    invoke-direct {v12}, Landroid/app/Instrumentation;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    .line 508
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 509
    .local v6, "filter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    const-string v12, "keyguard"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 513
    const-string v12, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 514
    const-string v12, "phone2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    .line 515
    new-instance v12, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 517
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 518
    .local v10, "size":Landroid/graphics/Point;
    const-string v12, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    .line 519
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v12, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 521
    const-string v12, "window"

    invoke-static {v12}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v11

    .line 523
    .local v11, "wm":Landroid/view/IWindowManager;
    :try_start_1ff
    invoke-interface {v11}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v12

    if-nez v12, :cond_4f9

    const/4 v12, 0x1

    :goto_206
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z
    :try_end_20a
    .catch Landroid/os/RemoteException; {:try_start_1ff .. :try_end_20a} :catch_4fc

    .line 529
    :goto_20a
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    .line 530
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const-string v13, "com.sec.spen.flashannotatesvc"

    const-string v14, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 532
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    .line 533
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v13, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 534
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    new-instance v13, Landroid/content/ComponentName;

    const-string v14, "com.diotek.mini_penmemo"

    const-string v15, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 536
    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    .line 537
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const-string v13, "com.sec.android.gesturepad"

    const-string v14, "com.sec.android.gesturepad.GesturePadActivity"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const/high16 v13, 0x14000000

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 540
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_283

    .line 541
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 542
    .local v2, "captureFilter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v2, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    const-string v12, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v2, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 549
    .end local v2    # "captureFilter":Landroid/content/IntentFilter;
    :cond_283
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 550
    .local v7, "mediaFilter":Landroid/content/IntentFilter;
    if-eqz v7, :cond_29f

    if-eqz p1, :cond_29f

    .line 551
    const-string v12, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v7, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 552
    const-string v12, "file"

    invoke-virtual {v7, v12}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 558
    :cond_29f
    new-instance v12, Landroid/view/GestureDetector;

    new-instance v13, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 635
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    .line 636
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$4;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    .line 655
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDirectionHandler:Landroid/os/Handler;

    .line 656
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setFocusableInTouchMode(Z)V

    .line 657
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVC:Landroid/view/ViewConfiguration;

    .line 659
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setDisplayDegrees()Z

    .line 663
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 664
    .local v8, "point":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 665
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4, v8}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 667
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v12, :cond_50b

    .line 668
    iget v12, v8, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    .line 669
    iget v12, v8, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    .line 670
    const-string v12, "SPenGesture"

    const-string v13, "Initialized to portrait"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :goto_31a
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayWidthForMatrix:I

    .line 678
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayHeightForMatrix:I

    .line 680
    new-instance v13, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayHeightForMatrix:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayWidthForMatrix:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v12, :cond_520

    const/4 v12, 0x1

    :goto_33b
    invoke-direct {v13, v14, v15, v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;-><init>(IIZ)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    .line 682
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    .line 683
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    .line 684
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    .line 685
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstPointer:Z

    .line 686
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 687
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 688
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    .line 689
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 690
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 691
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 692
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    .line 693
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    .line 694
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    .line 695
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    .line 696
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    .line 697
    const/high16 v12, -0x40800000

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 698
    const/high16 v12, -0x40800000

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 699
    const/high16 v12, -0x40800000

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 700
    const/high16 v12, -0x40800000

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 701
    const/high16 v12, -0x40800000

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 702
    const/high16 v12, -0x40800000

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 703
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    .line 704
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    .line 705
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    .line 706
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    .line 707
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    .line 708
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    .line 709
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    .line 710
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    .line 711
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 712
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 713
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 714
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 715
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 716
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 717
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 718
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 719
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 720
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 721
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    .line 722
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 723
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 725
    new-instance v3, Landroid/graphics/DashPathEffect;

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_524

    const/4 v13, 0x0

    invoke-direct {v3, v12, v13}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 726
    .local v3, "dashPath":Landroid/graphics/DashPathEffect;
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    .line 727
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 728
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/16 v13, 0xff

    const/16 v14, 0xff

    const/16 v15, 0xff

    const/16 v16, 0xff

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 729
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x40000000

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 731
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 732
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x3f800000

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000

    const/high16 v16, -0x1000000

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 741
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    .line 742
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 743
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/16 v13, 0xff

    const/16 v14, 0xff

    const/16 v15, 0xff

    const/16 v16, 0xff

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 744
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x40400000

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 746
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v13, 0x3f800000

    const/4 v14, 0x0

    const/high16 v15, 0x3f800000

    const/high16 v16, -0x1000000

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 755
    new-instance v12, Landroid/graphics/Paint;

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    .line 756
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 757
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/16 v13, 0xff

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 759
    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    invoke-direct {v9}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;-><init>()V

    .line 760
    .local v9, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 761
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    .line 764
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 766
    new-instance v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    .line 768
    return-void

    .line 523
    .end local v3    # "dashPath":Landroid/graphics/DashPathEffect;
    .end local v4    # "display":Landroid/view/Display;
    .end local v7    # "mediaFilter":Landroid/content/IntentFilter;
    .end local v8    # "point":Landroid/graphics/Point;
    .end local v9    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_4f9
    const/4 v12, 0x0

    goto/16 :goto_206

    .line 524
    :catch_4fc
    move-exception v5

    .line 525
    .local v5, "ex":Landroid/os/RemoteException;
    const-string v12, "SPenGesture"

    const-string v13, "RemoteException"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z

    goto/16 :goto_20a

    .line 672
    .end local v5    # "ex":Landroid/os/RemoteException;
    .restart local v4    # "display":Landroid/view/Display;
    .restart local v7    # "mediaFilter":Landroid/content/IntentFilter;
    .restart local v8    # "point":Landroid/graphics/Point;
    :cond_50b
    iget v12, v8, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    .line 673
    iget v12, v8, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    .line 674
    const-string v12, "SPenGesture"

    const-string v13, "Initialized to Landscape"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_31a

    .line 680
    :cond_520
    const/4 v12, 0x0

    goto/16 :goto_33b

    .line 725
    nop

    :array_524
    .array-data 4
        0x40a00000
        0x40000000
    .end array-data
.end method

.method private GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    .registers 15

    .prologue
    const/high16 v13, 0x40000000

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2130
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 2131
    .local v4, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v4, :cond_1e

    .line 2132
    invoke-virtual {v4, v7}, Landroid/sec/enterprise/RestrictionPolicy;->isScreenCaptureEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_1e

    .line 2133
    const-string v7, "SPenGesture"

    const-string v8, "MDM: Screen Capture Disabled"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :goto_1d
    return-object v6

    .line 2139
    :cond_1e
    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2140
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2142
    const/4 v9, 0x2

    new-array v2, v9, [F

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v9, v9

    aput v9, v2, v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v9, v9

    aput v9, v2, v7

    .line 2143
    .local v2, "dims":[F
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getDegreesForRotation(I)F

    move-result v1

    .line 2144
    .local v1, "degrees":F
    cmpl-float v9, v1, v12

    if-lez v9, :cond_ce

    move v3, v7

    .line 2146
    .local v3, "requiresRotation":Z
    :goto_4c
    if-eqz v3, :cond_6e

    .line 2147
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 2148
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v10, v1

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2149
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2150
    aget v9, v2, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    aput v9, v2, v8

    .line 2151
    aget v9, v2, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    aput v9, v2, v7

    .line 2154
    :cond_6e
    aget v9, v2, v8

    float-to-int v9, v9

    aget v10, v2, v7

    float-to-int v10, v10

    invoke-static {v9, v10}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2157
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_8c

    .line 2158
    aget v9, v2, v8

    float-to-int v9, v9

    aget v10, v2, v7

    float-to-int v10, v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2162
    :cond_8c
    if-eqz v3, :cond_ca

    .line 2163
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2165
    .local v5, "ss":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2166
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2167
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2168
    aget v8, v2, v8

    neg-float v8, v8

    div-float/2addr v8, v13

    aget v7, v2, v7

    neg-float v7, v7

    div-float/2addr v7, v13

    invoke-virtual {v0, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2169
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7, v12, v12, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2170
    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2171
    iput-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2173
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v5    # "ss":Landroid/graphics/Bitmap;
    :cond_ca
    iget-object v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1d

    .end local v3    # "requiresRotation":Z
    :cond_ce
    move v3, v8

    .line 2144
    goto/16 :goto_4c
.end method

.method private SaveImage()Z
    .registers 14

    .prologue
    .line 2023
    const-string v9, "SPenGesture"

    const-string v10, "SaveImage"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2026
    .local v4, "mImageTime":J
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2027
    .local v1, "imageDate":Ljava/lang/String;
    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2028
    .local v2, "imageDir":Ljava/lang/String;
    const-string v9, "Screenshot_%s.png"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2029
    .local v3, "mImageFileName":Ljava/lang/String;
    const-string v9, "%s/%s/%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    const-string v12, "Screenshots"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    .line 2031
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2032
    .local v7, "values":Landroid/content/ContentValues;
    const-string v9, "_data"

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    const-string v9, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2034
    const-string v9, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2035
    const-string v9, "date_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2036
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUri:Landroid/net/Uri;

    .line 2039
    :try_start_7c
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 2040
    .local v6, "outStream":Ljava/io/OutputStream;
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2041
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 2042
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_97} :catch_10b

    .line 2049
    .end local v6    # "outStream":Ljava/io/OutputStream;
    :goto_97
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 2050
    const-string v9, "_size"

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2051
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUri:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2054
    const-string v9, "%s/%s/tmp%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    const-string v12, "Screenshots"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    .line 2056
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2057
    .local v8, "valuesForAnimation":Landroid/content/ContentValues;
    const-string v9, "_data"

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 2061
    :try_start_eb
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 2062
    .restart local v6    # "outStream":Ljava/io/OutputStream;
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2064
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 2065
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_106} :catch_110

    .line 2070
    .end local v6    # "outStream":Ljava/io/OutputStream;
    :goto_106
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    .line 2071
    const/4 v9, 0x1

    return v9

    .line 2044
    .end local v8    # "valuesForAnimation":Landroid/content/ContentValues;
    :catch_10b
    move-exception v0

    .line 2045
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_97

    .line 2067
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v8    # "valuesForAnimation":Landroid/content/ContentValues;
    :catch_110
    move-exception v0

    .line 2068
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_106
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Ljava/util/ArrayList;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    return v0
.end method

.method static synthetic access$5202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # F

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    return p1
.end method

.method static synthetic access$5300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    return v0
.end method

.method static synthetic access$5302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # F

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    return p1
.end method

.method static synthetic access$5400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    return p1
.end method

.method static synthetic access$5900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;IZ)V
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    return v0
.end method

.method static synthetic access$6102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    return p1
.end method

.method static synthetic access$6200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    return p1
.end method

.method static synthetic access$6300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    return v0
.end method

.method static synthetic access$6402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    return p1
.end method

.method static synthetic access$6500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$6702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$6802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$6902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startAniForLoadingService()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->SaveImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    return v0
.end method

.method static synthetic access$7900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/view/Display;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->injectionKeyEvent(I)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method static synthetic access$8402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
    .param p1, "x1"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    return p1
.end method

.method private checkClosedCurve(III)V
    .registers 11
    .param p1, "resultCoordsX"    # I
    .param p2, "resultCoordsY"    # I
    .param p3, "markNumber"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1225
    const/4 v2, -0x1

    .line 1228
    .local v2, "markNumberFromMatrix":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_4
    const/4 v3, 0x6

    if-ge v1, v3, :cond_43

    .line 1229
    add-int v3, p2, v1

    if-ltz v3, :cond_1f

    if-ltz p1, :cond_1f

    add-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_1f

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_1f

    .line 1232
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    add-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1238
    :cond_1f
    if-eq v2, v5, :cond_95

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_95

    .line 1240
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_43

    .line 1241
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1245
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_35

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_90

    .line 1246
    :cond_35
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1247
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1248
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1249
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1255
    :goto_3d
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1293
    :cond_43
    :goto_43
    const/16 v0, 0xc

    .line 1294
    .local v0, "circleRadius":I
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p1, :cond_5d

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0x18

    if-lt v3, p1, :cond_5d

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p2, :cond_5d

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0x18

    if-ge v3, p2, :cond_5f

    .line 1296
    :cond_5d
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 1299
    :cond_5f
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    if-ne v3, v6, :cond_8f

    .line 1300
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p1, :cond_8f

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p1, :cond_8f

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p2, :cond_8f

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p2, :cond_8f

    .line 1302
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1304
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_85

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_dc

    .line 1305
    :cond_85
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1306
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1312
    :goto_89
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1317
    :cond_8f
    return-void

    .line 1252
    .end local v0    # "circleRadius":I
    :cond_90
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1253
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_3d

    .line 1262
    :cond_95
    sub-int v3, p2, v1

    if-ltz v3, :cond_ad

    if-ltz p1, :cond_ad

    sub-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_ad

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_ad

    .line 1265
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    sub-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1268
    :cond_ad
    if-eq v2, v5, :cond_d8

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_d8

    .line 1270
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_43

    .line 1271
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1275
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_c3

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_d3

    .line 1276
    :cond_c3
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1277
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1278
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1279
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1285
    :goto_cb
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    goto/16 :goto_43

    .line 1282
    :cond_d3
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1283
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_cb

    .line 1228
    :cond_d8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 1309
    .restart local v0    # "circleRadius":I
    :cond_dc
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1310
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_89
.end method

.method private checkDirectionGesture()Z
    .registers 32

    .prologue
    .line 2193
    const-string v25, "SPenGesture"

    const-string v26, "checkDirectionGesture"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    const/4 v5, 0x0

    .line 2195
    .local v5, "distance":I
    const/16 v21, 0x0

    .line 2196
    .local v21, "vertexX":I
    const/16 v22, 0x0

    .line 2197
    .local v22, "vertexY":I
    const/4 v6, 0x0

    .line 2198
    .local v6, "distanceMax":I
    const/4 v7, 0x0

    .line 2199
    .local v7, "distanceStartAndEnd":I
    const/4 v12, 0x0

    .line 2200
    .local v12, "minX":I
    const/4 v13, 0x0

    .line 2201
    .local v13, "minY":I
    const/4 v10, 0x0

    .line 2202
    .local v10, "maxX":I
    const/4 v11, 0x0

    .line 2203
    .local v11, "maxY":I
    const/16 v16, 0x0

    .line 2204
    .local v16, "result1":F
    const/16 v17, 0x0

    .line 2205
    .local v17, "result2":F
    const/16 v18, 0x0

    .line 2206
    .local v18, "slope":F
    const/4 v9, 0x0

    .line 2209
    .local v9, "interceptY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v3, v0

    .line 2210
    .local v3, "Xdistance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v4, v0

    .line 2214
    .local v4, "Ydistance":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000000000000000L

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000000000000000L

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v7, v0

    .line 2216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_bf

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-nez v25, :cond_144

    .line 2217
    :cond_bf
    const/16 v18, 0x0

    .line 2222
    :goto_c1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    mul-float v26, v26, v18

    sub-float v9, v25, v26

    .line 2226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 2227
    .local v19, "totalPointerCount":I
    const/4 v14, 0x0

    .local v14, "p":I
    :goto_dc
    move/from16 v0, v19

    if-ge v14, v0, :cond_168

    .line 2228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 2229
    .local v15, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v20

    .line 2230
    .local v20, "traceCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_f3
    move/from16 v0, v20

    if-ge v8, v0, :cond_164

    .line 2231
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v23, v25, v8

    .line 2232
    .local v23, "x":F
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v24, v25, v8

    .line 2235
    .local v24, "y":F
    mul-float v25, v18, v23

    const/high16 v26, -0x40800000

    mul-float v26, v26, v24

    add-float v25, v25, v26

    add-float v25, v25, v9

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 2236
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000000000000000L

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    const-wide/high16 v27, -0x4010000000000000L

    const-wide/high16 v29, 0x4000000000000000L

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    add-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v17, v0

    .line 2238
    div-float v25, v16, v17

    move/from16 v0, v25

    float-to-int v5, v0

    .line 2240
    if-ge v6, v5, :cond_141

    .line 2241
    move v6, v5

    .line 2242
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2243
    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2230
    :cond_141
    add-int/lit8 v8, v8, 0x1

    goto :goto_f3

    .line 2220
    .end local v8    # "i":I
    .end local v14    # "p":I
    .end local v15    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v19    # "totalPointerCount":I
    .end local v20    # "traceCount":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_144
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    div-float v18, v25, v26

    goto/16 :goto_c1

    .line 2227
    .restart local v8    # "i":I
    .restart local v14    # "p":I
    .restart local v15    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .restart local v19    # "totalPointerCount":I
    .restart local v20    # "traceCount":I
    :cond_164
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_dc

    .line 2250
    .end local v8    # "i":I
    .end local v15    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v20    # "traceCount":I
    :cond_168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_1d7

    .line 2251
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    .line 2252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    .line 2258
    :goto_18a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_1ea

    .line 2259
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    .line 2260
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    .line 2267
    :goto_1ac
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v6, v0, :cond_1d4

    const/16 v25, 0x320

    move/from16 v0, v25

    if-ge v6, v0, :cond_1d4

    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v7, v0, :cond_1d4

    const/16 v25, 0x4b0

    move/from16 v0, v25

    if-ge v7, v0, :cond_1d4

    .line 2269
    const/high16 v25, 0x3f800000

    cmpg-float v25, v18, v25

    if-gtz v25, :cond_23c

    const/high16 v25, -0x40800000

    cmpl-float v25, v18, v25

    if-ltz v25, :cond_23c

    .line 2270
    move/from16 v0, v21

    if-gt v10, v0, :cond_1fd

    .line 2334
    :cond_1d4
    const/16 v25, 0x0

    :goto_1d6
    return v25

    .line 2255
    :cond_1d7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    .line 2256
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    goto :goto_18a

    .line 2263
    :cond_1ea
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    .line 2264
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    goto :goto_1ac

    .line 2274
    :cond_1fd
    move/from16 v0, v21

    if-le v12, v0, :cond_217

    .line 2277
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_214

    .line 2278
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2279
    :cond_214
    const/16 v25, 0x1

    goto :goto_1d6

    .line 2282
    :cond_217
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_1d4

    .line 2285
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_239

    .line 2286
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2287
    :cond_239
    const/16 v25, 0x1

    goto :goto_1d6

    .line 2296
    :cond_23c
    move/from16 v0, v22

    if-le v11, v0, :cond_1d4

    .line 2300
    move/from16 v0, v22

    if-le v13, v0, :cond_25b

    .line 2303
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_257

    .line 2304
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2305
    :cond_257
    const/16 v25, 0x1

    goto/16 :goto_1d6

    .line 2308
    :cond_25b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_1d4

    .line 2311
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_27d

    .line 2312
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2313
    :cond_27d
    const/16 v25, 0x1

    goto/16 :goto_1d6
.end method

.method private checkDownGesture()V
    .registers 20

    .prologue
    .line 2342
    const/4 v6, 0x0

    .line 2343
    .local v6, "distanceY":I
    const/4 v5, 0x0

    .line 2344
    .local v5, "distanceX":I
    const/4 v15, 0x0

    .line 2345
    .local v15, "vertexX":I
    const/16 v16, 0x0

    .line 2346
    .local v16, "vertexY":I
    const/4 v3, 0x0

    .line 2347
    .local v3, "distanceMax":I
    const/4 v4, 0x0

    .line 2348
    .local v4, "distanceStartAndEnd":I
    const/4 v10, 0x0

    .line 2349
    .local v10, "minX":I
    const/4 v11, 0x0

    .line 2350
    .local v11, "minY":I
    const/4 v8, 0x0

    .line 2351
    .local v8, "maxX":I
    const/4 v9, 0x0

    .line 2352
    .local v9, "maxY":I
    const/4 v12, 0x0

    .line 2353
    .local v12, "result1":F
    const/4 v13, 0x0

    .line 2354
    .local v13, "result2":F
    const/4 v14, 0x0

    .line 2355
    .local v14, "slope":F
    const/4 v7, 0x0

    .line 2363
    .local v7, "interceptY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44200000

    cmpl-float v17, v17, v18

    if-lez v17, :cond_a8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a00000

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_a8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44200000

    cmpl-float v17, v17, v18

    if-lez v17, :cond_a8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a00000

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_a8

    .line 2366
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v6, v0

    .line 2367
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 2370
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-le v6, v0, :cond_a8

    .line 2371
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_a9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43960000

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_a9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_a9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43960000

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_a9

    .line 2374
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2385
    :cond_a8
    :goto_a8
    return-void

    .line 2376
    :cond_a9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa0000

    cmpl-float v17, v17, v18

    if-lez v17, :cond_a8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x44480000

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_a8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa0000

    cmpl-float v17, v17, v18

    if-lez v17, :cond_a8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x44480000

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_a8

    .line 2381
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    goto :goto_a8
.end method

.method private getDegreesForRotation(I)F
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2179
    packed-switch p1, :pswitch_data_e

    .line 2187
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2181
    :pswitch_5
    const/high16 v0, 0x43870000

    goto :goto_4

    .line 2183
    :pswitch_8
    const/high16 v0, 0x43340000

    goto :goto_4

    .line 2185
    :pswitch_b
    const/high16 v0, 0x42b40000

    goto :goto_4

    .line 2179
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private getTopActivityComponentName()Landroid/content/ComponentName;
    .registers 6

    .prologue
    .line 928
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 929
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 930
    .local v0, "Info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 932
    .local v2, "topActivity":Landroid/content/ComponentName;
    return-object v2
.end method

.method private injectionKeyEvent(I)V
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 984
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 987
    :cond_11
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 1004
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1005
    return-void
.end method

.method private isAvailableCapacity()Z
    .registers 16

    .prologue
    .line 2077
    const-string v13, "SPenGesture"

    const-string v14, "isAvailableCapacity"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 2080
    .local v7, "extStoragePath":Ljava/io/File;
    if-eqz v7, :cond_3c

    .line 2083
    :try_start_d
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_16} :catch_37

    .line 2090
    .local v8, "stat":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v4, v13

    .line 2091
    .local v4, "blockSize":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v9, v13

    .line 2092
    .local v9, "totalBlocks":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v0, v13

    .line 2096
    .local v0, "availableBlocks":J
    mul-long v11, v9, v4

    .line 2097
    .local v11, "totalSpace":J
    mul-long v2, v0, v4

    .line 2105
    .local v2, "availableSpace":J
    const-wide/16 v13, 0x2800

    cmp-long v13, v2, v13

    if-gez v13, :cond_3a

    .line 2107
    const v13, 0x10401ba

    invoke-direct {p0, v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->showToast(I)V

    .line 2108
    const/4 v13, 0x0

    .line 2114
    .end local v0    # "availableBlocks":J
    .end local v2    # "availableSpace":J
    .end local v4    # "blockSize":J
    .end local v8    # "stat":Landroid/os/StatFs;
    .end local v9    # "totalBlocks":J
    .end local v11    # "totalSpace":J
    :goto_36
    return v13

    .line 2084
    :catch_37
    move-exception v6

    .line 2087
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const/4 v13, 0x0

    goto :goto_36

    .line 2110
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "availableBlocks":J
    .restart local v2    # "availableSpace":J
    .restart local v4    # "blockSize":J
    .restart local v8    # "stat":Landroid/os/StatFs;
    .restart local v9    # "totalBlocks":J
    .restart local v11    # "totalSpace":J
    :cond_3a
    const/4 v13, 0x1

    goto :goto_36

    .line 2114
    .end local v0    # "availableBlocks":J
    .end local v2    # "availableSpace":J
    .end local v4    # "blockSize":J
    .end local v8    # "stat":Landroid/os/StatFs;
    .end local v9    # "totalBlocks":J
    .end local v11    # "totalSpace":J
    :cond_3c
    const/4 v13, 0x0

    goto :goto_36
.end method

.method private isLockScreenShowing()Z
    .registers 4

    .prologue
    .line 2502
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_13

    .line 2504
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2509
    :goto_a
    return v1

    .line 2505
    :catch_b
    move-exception v0

    .line 2506
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SPenGesture"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2509
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isPossibleCapture()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 909
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v2, :cond_11

    .line 910
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 913
    :cond_11
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_1b

    .line 915
    :try_start_15
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->isScreenCaptureEnabled()Z
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c

    move-result v1

    .line 922
    :cond_1b
    :goto_1b
    return v1

    .line 916
    :catch_1c
    move-exception v0

    .line 917
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SPenGesture"

    const-string v3, "StatusBarService RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method

.method private isSecureUnlockEnabled()Z
    .registers 4

    .prologue
    .line 2491
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_13

    .line 2493
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2498
    :goto_a
    return v1

    .line 2494
    :catch_b
    move-exception v0

    .line 2495
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SPenGesture"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2498
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .registers 6
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 939
    .local v0, "topComponentName":Landroid/content/ComponentName;
    const-string v1, "SPenGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TopActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTopActivity(Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 946
    .local p1, "findList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 947
    .local v1, "topComponentName":Landroid/content/ComponentName;
    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TopActivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3a

    .line 950
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 951
    const/4 v2, 0x1

    .line 953
    :goto_36
    return v2

    .line 949
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 953
    :cond_3a
    const/4 v2, 0x0

    goto :goto_36
.end method

.method private markMatrixForCropping(FFFFI)V
    .registers 20
    .param p1, "oldCoordsX"    # F
    .param p2, "oldCoordsY"    # F
    .param p3, "newCoordsX"    # F
    .param p4, "newCoordsY"    # F
    .param p5, "markNumber"    # I

    .prologue
    .line 1079
    const/4 v8, 0x0

    .line 1080
    .local v8, "startCoordsX":F
    const/4 v9, 0x0

    .line 1081
    .local v9, "startCoordsY":F
    const/4 v1, 0x0

    .line 1082
    .local v1, "endCoordsX":F
    const/4 v2, 0x0

    .line 1083
    .local v2, "endCoordsY":F
    const/4 v5, 0x0

    .line 1084
    .local v5, "resultCoordsX":F
    const/4 v6, 0x0

    .line 1085
    .local v6, "resultCoordsY":F
    const/4 v7, 0x0

    .line 1086
    .local v7, "slope":F
    const/4 v4, 0x0

    .line 1088
    .local v4, "interceptY":F
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_12

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_26

    .line 1089
    :cond_12
    float-to-int v10, p1

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    .line 1090
    move/from16 v0, p2

    float-to-int v10, v0

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    .line 1096
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 1097
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1100
    :cond_26
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    add-float v11, p3, p1

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    add-float v12, p4, p2

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0, v11, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1102
    cmpl-float v10, p1, p3

    if-nez v10, :cond_3f

    cmpl-float v10, p2, p4

    if-eqz v10, :cond_1c3

    .line 1104
    :cond_3f
    move v8, p1

    .line 1105
    move/from16 v9, p2

    .line 1106
    move/from16 v1, p3

    .line 1107
    move/from16 v2, p4

    .line 1109
    sub-float v10, v8, v1

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_b1

    .line 1110
    sub-float v10, v2, v9

    sub-float v11, v1, v8

    div-float v7, v10, v11

    .line 1115
    :goto_53
    mul-float v10, v8, v7

    sub-float v4, v9, v10

    .line 1117
    cmpg-float v10, p1, p3

    if-gtz v10, :cond_130

    .line 1118
    :goto_5b
    cmpg-float v10, v8, v1

    if-gtz v10, :cond_1c3

    .line 1119
    move v5, v8

    .line 1120
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 1122
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkClosedCurve(III)V

    .line 1137
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_73

    .line 1138
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1141
    :cond_73
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f800000

    cmpl-float v10, v10, v11

    if-lez v10, :cond_b3

    .line 1142
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_7f
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_b3

    .line 1143
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_ae

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_ae

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_ae

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_ae

    .line 1146
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1142
    :cond_ae
    add-int/lit8 v3, v3, 0x1

    goto :goto_7f

    .line 1113
    .end local v3    # "i":I
    :cond_b1
    const/4 v7, 0x0

    goto :goto_53

    .line 1150
    :cond_b3
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x40800000

    cmpg-float v10, v10, v11

    if-gez v10, :cond_f0

    .line 1151
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_bf
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_f0

    .line 1152
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_ed

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_ed

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_ed

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_ed

    .line 1155
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1151
    :cond_ed
    add-int/lit8 v3, v3, 0x1

    goto :goto_bf

    .line 1160
    .end local v3    # "i":I
    :cond_f0
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1161
    float-to-int v10, v6

    if-ltz v10, :cond_10c

    float-to-int v10, v5

    if-ltz v10, :cond_10c

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_10c

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_10c

    .line 1164
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    float-to-int v11, v6

    float-to-int v12, v5

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1118
    :cond_10c
    const/high16 v10, 0x3f800000

    add-float/2addr v8, v10

    goto/16 :goto_5b

    .line 1211
    :cond_111
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1212
    float-to-int v10, v6

    if-ltz v10, :cond_12d

    float-to-int v10, v5

    if-ltz v10, :cond_12d

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_12d

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_12d

    .line 1215
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    float-to-int v11, v6

    float-to-int v12, v5

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1169
    :cond_12d
    const/high16 v10, 0x3f800000

    sub-float/2addr v8, v10

    :cond_130
    cmpl-float v10, v8, v1

    if-ltz v10, :cond_1c3

    .line 1170
    move v5, v8

    .line 1171
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 1173
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkClosedCurve(III)V

    .line 1188
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_148

    .line 1189
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1192
    :cond_148
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f800000

    cmpl-float v10, v10, v11

    if-lez v10, :cond_186

    .line 1193
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_154
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_186

    .line 1194
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_183

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_183

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_183

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_183

    .line 1197
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1193
    :cond_183
    add-int/lit8 v3, v3, 0x1

    goto :goto_154

    .line 1201
    .end local v3    # "i":I
    :cond_186
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x40800000

    cmpg-float v10, v10, v11

    if-gez v10, :cond_111

    .line 1202
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_192
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_111

    .line 1203
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_1c0

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_1c0

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_1c0

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_1c0

    .line 1206
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1202
    :cond_1c0
    add-int/lit8 v3, v3, 0x1

    goto :goto_192

    .line 1220
    .end local v3    # "i":I
    :cond_1c3
    return-void
.end method

.method private setAboutStartingSuggestionService()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 2462
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-ne v4, v6, :cond_37

    .line 2463
    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2469
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 2472
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 2473
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2475
    .local v3, "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.SuggestionService.SuggestionAppService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 2477
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    .line 2485
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_37
    return-void

    .line 2481
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v2    # "iterator":Ljava/util/Iterator;
    .restart local v3    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_38
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    goto :goto_1b
.end method

.method private setDisplayDegrees()Z
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2414
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 2415
    .local v3, "point":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 2416
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2418
    iget v4, v3, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    .line 2419
    iget v4, v3, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    .line 2421
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 2422
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    iget v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-le v4, v7, :cond_9c

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    :goto_2e
    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    .line 2427
    :goto_32
    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getDegreesForRotation(I)F

    move-result v1

    .line 2429
    .local v1, "degress":F
    const-string v4, "SPenGesture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrentDisplayWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCurrentDisplayHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Rot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", deg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    const/4 v0, 0x0

    .line 2433
    .local v0, "changed":Z
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_88

    const/high16 v4, 0x43340000

    cmpl-float v4, v1, v4

    if-nez v4, :cond_a9

    .line 2435
    :cond_88
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-ne v4, v5, :cond_a6

    .line 2436
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    .line 2437
    const/4 v0, 0x1

    .line 2452
    :goto_8f
    if-eqz v0, :cond_9b

    .line 2453
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v4, :cond_b4

    move v4, v5

    :goto_98
    invoke-virtual {v7, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->setPortrait(Z)V

    .line 2456
    :cond_9b
    return v0

    .line 2422
    .end local v0    # "changed":Z
    .end local v1    # "degress":F
    :cond_9c
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    goto :goto_2e

    .line 2424
    :cond_9f
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    goto :goto_32

    .line 2439
    .restart local v0    # "changed":Z
    .restart local v1    # "degress":F
    :cond_a6
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    goto :goto_8f

    .line 2444
    :cond_a9
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v4, :cond_b1

    .line 2445
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    .line 2446
    const/4 v0, 0x1

    goto :goto_8f

    .line 2448
    :cond_b1
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    goto :goto_8f

    :cond_b4
    move v4, v6

    .line 2453
    goto :goto_98
.end method

.method private showToast(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2122
    return-void
.end method

.method private startAniForLoadingService()V
    .registers 13

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000

    const/4 v6, 0x0

    .line 1860
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setVisibility(I)V

    .line 1862
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1863
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1080374

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 1864
    .local v11, "tempDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1865
    .local v10, "tempBitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1866
    .local v9, "rectForAnimation":Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1867
    .local v7, "bitmapForAnimation":Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1868
    .local v8, "canvasForAnimation":Landroid/graphics/Canvas;
    const/4 v1, 0x0

    invoke-virtual {v8, v10, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1870
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1871
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1873
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    .line 1875
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1876
    .local v0, "ani":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1877
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1878
    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1897
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1898
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;->playVibrator()V

    .line 1899
    return-void
.end method

.method private startEffectForGesture(IZ)V
    .registers 11
    .param p1, "key"    # I
    .param p2, "isDownGesture"    # Z

    .prologue
    const-wide/16 v6, 0xc8

    const/high16 v5, 0x41100000

    const/4 v4, 0x0

    const/high16 v3, 0x40000000

    .line 2516
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2654
    :cond_d
    :goto_d
    return-void

    .line 2520
    :cond_e
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    if-eqz v0, :cond_2b

    .line 2521
    const-string v0, "SPenGesture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " couldn\'t execute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 2525
    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 2527
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setVisibility(I)V

    .line 2528
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2529
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2530
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2531
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2533
    if-eqz p2, :cond_cd

    .line 2534
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2535
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42040000

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 2537
    packed-switch p1, :pswitch_data_11c

    .line 2552
    :goto_7d
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2553
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$11;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2646
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2648
    const/4 v0, 0x2

    if-ne p1, v0, :cond_d

    .line 2649
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 2650
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_d

    .line 2539
    :pswitch_ad
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_7d

    .line 2542
    :pswitch_b3
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    goto :goto_7d

    .line 2548
    :cond_cd
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2549
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    .line 2550
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_7d

    .line 2652
    :cond_112
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_d

    .line 2537
    nop

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_ad
        :pswitch_b3
    .end packed-switch
.end method


# virtual methods
.method public addSPenEvent(Landroid/view/MotionEvent;ZZ)V
    .registers 30
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isKeyguardOn"    # Z
    .param p3, "isLiveGlanceView"    # Z

    .prologue
    .line 1324
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    .line 1325
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    if-nez v2, :cond_5ca

    .line 1326
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 1327
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1331
    :try_start_1d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1332
    .local v8, "action":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1334
    .local v21, "totalPointerSize":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2c0

    const/16 v2, 0x9

    if-eq v8, v2, :cond_2c0

    const/4 v2, 0x7

    if-eq v8, v2, :cond_2c0

    const/16 v2, 0xa

    if-eq v8, v2, :cond_2c0

    .line 1337
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5c

    .line 1338
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1339
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 1340
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->postInvalidate()V

    .line 1342
    monitor-exit v25

    .line 1855
    .end local v8    # "action":I
    .end local v21    # "totalPointerSize":I
    :cond_5b
    :goto_5b
    return-void

    .line 1345
    .restart local v8    # "action":I
    .restart local v21    # "totalPointerSize":I
    :cond_5c
    if-eqz v8, :cond_63

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_12e

    .line 1350
    :cond_63
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->updateRotation()V

    .line 1351
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setAboutStartingSuggestionService()V

    .line 1353
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_74

    .line 1355
    monitor-exit v25

    goto :goto_5b

    .line 1816
    .end local v8    # "action":I
    .end local v21    # "totalPointerSize":I
    :catchall_71
    move-exception v2

    monitor-exit v25
    :try_end_73
    .catchall {:try_start_1d .. :try_end_73} :catchall_71

    throw v2

    .line 1358
    .restart local v8    # "action":I
    .restart local v21    # "totalPointerSize":I
    :cond_74
    :try_start_74
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_88

    .line 1359
    const-string v2, "SPenGesture"

    const-string v3, "CropThread is live!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1361
    monitor-exit v25

    goto :goto_5b

    .line 1364
    :cond_88
    const v2, 0xff00

    and-int/2addr v2, v8

    shr-int/lit8 v15, v2, 0x8

    .line 1366
    .local v15, "index":I
    if-nez v8, :cond_bf

    .line 1367
    const/16 v18, 0x0

    .local v18, "p":I
    :goto_92
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_b0

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1369
    .local v19, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->clearTrace()V

    .line 1370
    const/4 v2, 0x0

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    .line 1367
    add-int/lit8 v18, v18, 0x1

    goto :goto_92

    .line 1372
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_b0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    .line 1373
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    .line 1374
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    .line 1378
    .end local v18    # "p":I
    :cond_bf
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    .line 1379
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    if-ge v2, v3, :cond_db

    .line 1380
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    .line 1383
    :cond_db
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1384
    .local v14, "id":I
    :goto_e1
    move/from16 v0, v21

    if-gt v0, v14, :cond_f6

    .line 1385
    new-instance v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;-><init>()V

    .line 1386
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1387
    add-int/lit8 v21, v21, 0x1

    .line 1388
    goto :goto_e1

    .line 1390
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_f6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    if-ltz v2, :cond_110

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_114

    .line 1392
    :cond_110
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    .line 1395
    :cond_114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1396
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    .line 1397
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    .line 1401
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 1405
    .end local v14    # "id":I
    .end local v15    # "index":I
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_12e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_137

    .line 1407
    monitor-exit v25

    goto/16 :goto_5b

    .line 1410
    :cond_137
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_153

    .line 1411
    const-string v2, "SPenGesture"

    const-string v3, "CropThread is live!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1413
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1414
    monitor-exit v25

    goto/16 :goto_5b

    .line 1417
    :cond_153
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 1422
    .local v10, "eventPointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 1424
    .local v12, "histroySize":I
    const/4 v11, 0x0

    .local v11, "historyPos":I
    :goto_15c
    if-ge v11, v12, :cond_1f9

    .line 1425
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_15f
    if-ge v13, v10, :cond_1f5

    .line 1426
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1427
    .restart local v14    # "id":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_1ed

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    move-object/from16 v19, v2

    .line 1428
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :goto_179
    if-eqz v19, :cond_1f0

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1429
    .local v9, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_17f
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11, v9}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 1431
    if-eqz v19, :cond_1e9

    .line 1432
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->addTrace(FF)V

    .line 1433
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x40800000

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1a3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x40800000

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1dd

    .line 1434
    :cond_1a3
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 1435
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 1436
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1437
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1438
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1439
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1445
    :cond_1dd
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1446
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1425
    :cond_1e9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_15f

    .line 1427
    .end local v9    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_1ed
    const/16 v19, 0x0

    goto :goto_179

    .line 1428
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_1f0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto :goto_17f

    .line 1424
    .end local v14    # "id":I
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_1f5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_15c

    .line 1450
    .end local v13    # "i":I
    :cond_1f9
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_1fa
    if-ge v13, v10, :cond_2c0

    .line 1451
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1452
    .restart local v14    # "id":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_2b6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    move-object/from16 v19, v2

    .line 1453
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :goto_214
    if-eqz v19, :cond_2ba

    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1454
    .restart local v9    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_21a
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v9}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1456
    if-eqz v19, :cond_2b2

    .line 1457
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->addTrace(FF)V

    .line 1458
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x40800000

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_23e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x40800000

    cmpl-float v2, v2, v3

    if-nez v2, :cond_278

    .line 1459
    :cond_23e
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 1460
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 1461
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1462
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1463
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1464
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1469
    :cond_278
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v6, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    iget v7, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1471
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1472
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1473
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    move-object/from16 v0, v19

    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mToolType:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;I)I

    .line 1450
    :cond_2b2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1fa

    .line 1452
    .end local v9    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_2b6
    const/16 v19, 0x0

    goto/16 :goto_214

    .line 1453
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_2ba
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_21a

    .line 1478
    .end local v10    # "eventPointerCount":I
    .end local v11    # "historyPos":I
    .end local v12    # "histroySize":I
    .end local v13    # "i":I
    .end local v14    # "id":I
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_2c0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    if-eqz v2, :cond_2d7

    .line 1481
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1482
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 1483
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1487
    :cond_2d7
    const/4 v2, 0x1

    if-eq v8, v2, :cond_2df

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_458

    .line 1490
    :cond_2df
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1494
    .local v20, "totalPointerCount":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    if-nez v2, :cond_566

    .line 1495
    const/16 v18, 0x0

    .restart local v18    # "p":I
    :goto_2f6
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_376

    .line 1496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1497
    .restart local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v22

    .line 1498
    .local v22, "traceCount":I
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_30d
    move/from16 v0, v22

    if-ge v13, v0, :cond_373

    .line 1499
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v23, v2, v13

    .line 1500
    .local v23, "x":F
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v24, v2, v13

    .line 1502
    .local v24, "y":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    if-nez v2, :cond_337

    .line 1503
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 1504
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    .line 1505
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    .line 1498
    :goto_334
    add-int/lit8 v13, v13, 0x1

    goto :goto_30d

    .line 1508
    :cond_337
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    .line 1509
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    .line 1510
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->markMatrixForCropping(FFFFI)V

    .line 1511
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    .line 1512
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 1513
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    goto :goto_334

    .line 1495
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_373
    add-int/lit8 v18, v18, 0x1

    goto :goto_2f6

    .line 1518
    .end local v13    # "i":I
    .end local v19    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v22    # "traceCount":I
    :cond_376
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_537

    .line 1520
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1528
    :cond_390
    :goto_390
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    if-nez v2, :cond_3e4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    if-nez v2, :cond_3e4

    .line 1530
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1531
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1532
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1533
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1534
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1535
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1536
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1537
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1538
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1539
    const/high16 v2, -0x40800000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1540
    const/high16 v2, -0x40800000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1541
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1542
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1543
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1546
    :cond_3e4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    if-nez v2, :cond_3f2

    .line 1548
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkDirectionGesture()Z

    .line 1557
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 1564
    :cond_3f2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isPossibleCapture()Z

    move-result v2

    if-nez v2, :cond_451

    .line 1565
    const-string v2, "com.sec.android.app.videoplayer"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_451

    .line 1566
    const-string v2, "SPenGesture"

    const-string v3, "crop is not possible now by app!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1568
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1569
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1570
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1571
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1572
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1573
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1574
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1575
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1576
    const/high16 v2, -0x40800000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1577
    const/high16 v2, -0x40800000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1578
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1579
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1580
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1587
    .end local v18    # "p":I
    :cond_451
    :goto_451
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1590
    .end local v20    # "totalPointerCount":I
    :cond_458
    const/4 v2, 0x3

    if-ne v8, v2, :cond_469

    .line 1591
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action_calcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1595
    :cond_469
    const/16 v2, 0xa

    if-ne v8, v2, :cond_47b

    .line 1596
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action is MotionEvent.ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1600
    :cond_47b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->postInvalidate()V

    .line 1602
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    if-eqz v2, :cond_506

    .line 1603
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : mIsClosedCurve is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v2, :cond_56d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_56d

    .line 1606
    const-string v2, "SPenGesture"

    const-string v3, "duplicated!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1608
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1609
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1610
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1611
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1612
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1613
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1614
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1615
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1616
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1617
    const/high16 v2, -0x40800000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1618
    const/high16 v2, -0x40800000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1619
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1620
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1621
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1814
    :goto_501
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1816
    :cond_506
    monitor-exit v25
    :try_end_507
    .catchall {:try_start_74 .. :try_end_507} :catchall_71

    .line 1819
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    packed-switch v2, :pswitch_data_5ee

    .line 1839
    .end local v8    # "action":I
    .end local v21    # "totalPointerSize":I
    :goto_50e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-nez v2, :cond_5b

    .line 1840
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_523

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5b

    .line 1841
    :cond_523
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_5f6

    :pswitch_52a
    goto/16 :goto_5b

    .line 1848
    :pswitch_52c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_5b

    .line 1522
    .restart local v8    # "action":I
    .restart local v18    # "p":I
    .restart local v20    # "totalPointerCount":I
    .restart local v21    # "totalPointerSize":I
    :cond_537
    :try_start_537
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_390

    .line 1524
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1525
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    goto/16 :goto_390

    .line 1584
    .end local v18    # "p":I
    :cond_566
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    goto/16 :goto_451

    .line 1624
    .end local v20    # "totalPointerCount":I
    :cond_56d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    if-nez v2, :cond_584

    .line 1625
    const-string v2, "SPenGesture"

    const-string v3, "media scanning is not finished yet!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const v2, 0x1040936

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->showToast(I)V

    goto/16 :goto_501

    .line 1630
    :cond_584
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    .line 1632
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 1794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_5a0
    .catchall {:try_start_537 .. :try_end_5a0} :catchall_71

    goto/16 :goto_501

    .line 1823
    :pswitch_5a2
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PAUSE"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1824
    .local v16, "intentForVideoPause":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_50e

    .line 1829
    .end local v16    # "intentForVideoPause":Landroid/content/Intent;
    :pswitch_5b6
    new-instance v17, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1830
    .local v17, "intentForVideoPlay":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_50e

    .line 1835
    .end local v8    # "action":I
    .end local v17    # "intentForVideoPlay":Landroid/content/Intent;
    .end local v21    # "totalPointerSize":I
    :cond_5ca
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    .line 1836
    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSPenEvent : isKeyguardOn is true,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_50e

    .line 1819
    :pswitch_data_5ee
    .packed-switch 0x1
        :pswitch_5a2
        :pswitch_5b6
    .end packed-switch

    .line 1841
    :pswitch_data_5f6
    .packed-switch 0x0
        :pswitch_52c
        :pswitch_52c
        :pswitch_52c
        :pswitch_52c
        :pswitch_52a
        :pswitch_52c
        :pswitch_52c
    .end packed-switch
.end method

.method public isShowingGestureEffect()Z
    .registers 2

    .prologue
    .line 2659
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method public makePathForClosedCurve(IIZ)Z
    .registers 25
    .param p1, "intersectionPointPrev"    # I
    .param p2, "intersectionPointLast"    # I
    .param p3, "isFirstCurve"    # Z

    .prologue
    .line 1904
    const/4 v4, 0x0

    .line 1905
    .local v4, "existOldCoords":Z
    const/4 v9, 0x0

    .line 1906
    .local v9, "oldCoordsX":F
    const/4 v10, 0x0

    .line 1907
    .local v10, "oldCoordsY":F
    const/4 v6, 0x0

    .line 1908
    .local v6, "newCoordsX":F
    const/4 v7, 0x0

    .line 1909
    .local v7, "newCoordsY":F
    const/4 v8, 0x0

    .line 1914
    .local v8, "numberOfAddTrace":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1916
    .local v13, "totalPointerCount":I
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_11
    if-ge v11, v13, :cond_e8

    .line 1917
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1918
    .local v12, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v14

    .line 1919
    .local v14, "traceCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_26
    if-ge v5, v14, :cond_e4

    .line 1920
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v15, v17, v5

    .line 1921
    .local v15, "x":F
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v16, v17, v5

    .line 1923
    .local v16, "y":F
    move/from16 v0, p1

    if-gt v0, v8, :cond_72

    add-int/lit8 v17, p2, 0x1

    move/from16 v0, v17

    if-lt v0, v8, :cond_72

    .line 1924
    if-nez v4, :cond_9e

    .line 1925
    move v9, v15

    .line 1926
    move/from16 v10, v16

    .line 1927
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_77

    .line 1928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 1929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1930
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1931
    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1939
    :goto_71
    const/4 v4, 0x1

    .line 1957
    :cond_72
    :goto_72
    add-int/lit8 v8, v8, 0x1

    .line 1919
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 1934
    :cond_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 1935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1936
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1937
    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    goto :goto_71

    .line 1942
    :cond_9e
    move v6, v15

    .line 1943
    move/from16 v7, v16

    .line 1944
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_c8

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1953
    :goto_c4
    move v9, v15

    .line 1954
    move/from16 v10, v16

    goto :goto_72

    .line 1948
    :cond_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x40000000

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x40000000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_c4

    .line 1916
    .end local v15    # "x":F
    .end local v16    # "y":F
    :cond_e4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1961
    .end local v5    # "i":I
    .end local v12    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v14    # "traceCount":I
    :cond_e8
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1962
    .local v3, "boundsOfPath":Landroid/graphics/RectF;
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_127

    .line 1963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1970
    :goto_104
    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x42200000

    cmpg-float v17, v17, v18

    if-gez v17, :cond_137

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x42200000

    cmpg-float v17, v17, v18

    if-gez v17, :cond_137

    .line 1972
    const/16 v17, 0x0

    .line 1975
    :goto_126
    return v17

    .line 1966
    :cond_127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_104

    .line 1975
    :cond_137
    const/16 v17, 0x1

    goto :goto_126
.end method

.method protected onAttachedToWindow()V
    .registers 7

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x2

    .line 960
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080371

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080372

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080370

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080373

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080376

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 965
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080375

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 968
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 969
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 970
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->addView(Landroid/view/View;)V

    .line 972
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 973
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 974
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 975
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 976
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 977
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, -0x40800000

    .line 1063
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_19

    .line 1064
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    iget v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v2, 0x41000000

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1068
    :cond_19
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1071
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_37

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_37

    .line 1072
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    const/high16 v2, 0x40800000

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1074
    :cond_37
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1012
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1013
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHeaderBottom:I

    .line 1014
    return-void
.end method

.method public resetVariable(I)V
    .registers 9
    .param p1, "totalPointerSize"    # I

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/high16 v4, -0x40800000

    const/4 v3, 0x0

    .line 1983
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_6
    if-ge v0, p1, :cond_19

    .line 1984
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1985
    .local v1, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->clearTrace()V

    .line 1986
    # setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    .line 1983
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1989
    .end local v1    # "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_19
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    .line 1990
    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    .line 1991
    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    .line 1992
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    .line 1993
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    .line 1994
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstPointer:Z

    .line 1995
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 1996
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 1997
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    .line 1998
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    .line 1999
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    .line 2001
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 2002
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 2003
    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    .line 2004
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    .line 2005
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    .line 2006
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 2008
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 2010
    iget v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_52

    iget v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_52

    .line 2012
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->reset()V

    .line 2015
    :cond_52
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 2016
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 2017
    return-void
.end method

.method public setDoubleTapStateBySettingMenu(Z)V
    .registers 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 839
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 840
    return-void
.end method

.method public setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .registers 4
    .param p1, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 772
    const-string v0, "SPenGesture"

    const-string v1, "SpenGestureView: setFocusedWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 774
    return-void
.end method

.method public setHapticEnabled(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 473
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    .line 474
    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .registers 3
    .param p1, "isInvisible"    # Z

    .prologue
    .line 2665
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    if-nez v0, :cond_6

    .line 2666
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 2668
    :cond_6
    return-void
.end method

.method public updateRotation()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2391
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setDisplayDegrees()Z

    move-result v1

    .line 2393
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 2394
    .local v0, "ps":Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    # getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v2

    if-le v2, v4, :cond_1c

    .line 2395
    if-ne v1, v4, :cond_19

    .line 2396
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 2408
    :goto_18
    return-void

    .line 2400
    :cond_19
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_18

    .line 2405
    :cond_1c
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_18
.end method
