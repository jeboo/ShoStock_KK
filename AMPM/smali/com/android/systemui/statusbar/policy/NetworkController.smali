.class public Lcom/android/systemui/statusbar/policy/NetworkController;
.super Landroid/content/BroadcastReceiver;
.source "NetworkController.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkController$2;,
        Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;,
        Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;,
        Lcom/android/systemui/statusbar/policy/NetworkController$Operator;
    }
.end annotation


# static fields
.field public static final ACTION_CB_CLEAR:Ljava/lang/String; = "com.sec.android.app.mms.CB_CLEAR"

.field public static final ACTION_SMS_CB_DIRECT_DISPLAY_RECEIVED:Ljava/lang/String; = "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

.field static final CHATTY:Z = false

.field private static final DATA_ROAMING:Ljava/lang/String; = "data_roaming"

.field private static final DB_MOBILE_DATA:Ljava/lang/String; = "mobile_data"

.field private static final DB_MOBILE_DATA_SECONDARY:Ljava/lang/String; = "mobile_data_secondary"

.field static final DEBUG:Z = false

.field private static final EVENT_CHANGE_FAKE_CALL_STATE:I = 0x47

.field private static final EVENT_UPDATE_SIGNAL_STRENGTH:I = 0x46

.field private static final FLIGHT_MODE_ICON:I = 0x7f020154

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field static final REQ_NO_SIM_NOTIFICATION:I = 0x111

.field static final REQ_ROAMING_NOTIFICATION:I = 0x222

.field private static final RSSI_AIRPLANE_STATE:I = 0x0

.field private static final RSSI_IN_SVC_STATE:I = 0x2

.field private static final RSSI_NO_SVC_STATE:I = 0x1

.field static final TAG:Ljava/lang/String; = "StatusBar.NetworkController"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-NetworkController"


# instance fields
.field private final EXTRA_IS_VALID_PLMN:Ljava/lang/String;

.field LTE_ON_CDMA_FALSE:I

.field LTE_ON_CDMA_TRUE:I

.field LTE_ON_CDMA_UNKNOWN:I

.field mATTMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mATTNetworkName:Ljava/lang/String;

.field mAirplaneIconId:I

.field private mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field private mBluetoothTetherDisconnected:Z

.field private mBluetoothTetherIconId:I

.field private mBluetoothTethered:Z

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectedNetworkType:I

.field private mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mCurSvcSate:I

.field mCurrDataTypeIconId:I

.field private mCurrentSignalStrength:I

.field mDataActive:Z

.field mDataActivity:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataDirectionIconId:I

.field mDataIconList:[I

.field mDataNetType:I

.field private mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

.field private mDataRoamingSetting:Z

.field private mDataRoamingTypeForVZW:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeATTstyle:Z

.field mDataTypeBrand:Ljava/lang/String;

.field mDataTypeDisabledIconId:I

.field mDataTypeIconId:I

.field mDataTypeTMOstyle:Z

.field private mDemoDataTypeIconId:I

.field private mDemoInetCondition:I

.field private mDemoMobileLevel:I

.field private mDemoMode:Z

.field private mDemoWifiLevel:I

.field mEmergencyLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mEmgcCallState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field private mInetCondition:I

.field private mIsWimaxEnabled:Z

.field private mKeepFakeDuration:I

.field private mKeepFakeState:Z

.field private mLastAirplaneMode:Z

.field private mLastBluetoothTethered:Z

.field private mLastCB:Ljava/lang/String;

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field mLastDataDirectionIconId:I

.field mLastDataDirectionOverlayIconId:I

.field mLastDataState:I

.field mLastDataTypeIconId:I

.field private mLastLocale:Ljava/util/Locale;

.field mLastMobileActivityIconId:I

.field mLastPhoneSignalIconId:I

.field private mLastPlmn:Ljava/lang/String;

.field mLastRoamingIconId:I

.field private mLastShowPlmn:Z

.field private mLastShowSpn:Z

.field mLastSignalLevel:I

.field private mLastSpn:Ljava/lang/String;

.field mLastWifiActivityIconId:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field private mLocale:Ljava/util/Locale;

.field mMaxLevelOfSignalStrengthIndicator:I

.field private mMessageUpdateNotDone:Z

.field mMobileActivityIconId:I

.field mMobileDataEnabled:Z

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mMoreIconView:Landroid/view/View;

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field mOperator:Ljava/lang/String;

.field private mOperatorLogoIconView:Landroid/view/View;

.field final mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:I

.field mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreSvcSate:I

.field mRoamingIconId:I

.field mServiceState:Landroid/telephony/ServiceState;

.field private mShowAirPlane:Z

.field mShowAtLeastThreeGees:Z

.field mShowPhoneRSSIForData:Z

.field mSigStrengthId:I

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private mTargetSignalStrength:I

.field private mTransitionState:Z

.field private mVoiceCapable:Z

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field mWifiCarrierIcon:[[I

.field mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field final mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field private mWimaxConnected:Z

.field private mWimaxExtraState:I

.field private mWimaxIconId:I

.field private mWimaxIdle:Z

.field private mWimaxSignal:I

.field private mWimaxState:I

.field private mWimaxSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    .line 343
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 110
    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 111
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    .line 112
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 113
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    .line 114
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    .line 117
    sget-object v5, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v5, v5, v9

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 132
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 133
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 134
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 138
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    .line 139
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    .line 151
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSigStrengthId:I

    .line 152
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrDataTypeIconId:I

    .line 160
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 161
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 162
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    move-object v5, v6

    .line 164
    check-cast v5, [[I

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    .line 167
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 168
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    .line 169
    const v5, 0x10807b3

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    .line 171
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    .line 174
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 175
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 176
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 177
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    .line 178
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 179
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    .line 180
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 181
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 185
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 186
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 188
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    .line 191
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 192
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 194
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    .line 195
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    .line 199
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 200
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 202
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 203
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    .line 204
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    .line 205
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 206
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 207
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 208
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 209
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 210
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 211
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 212
    const-string v5, ""

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 214
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileActivityIconId:I

    .line 215
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiActivityIconId:I

    .line 220
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    .line 224
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    .line 225
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    .line 229
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    .line 230
    const-string v5, "isValidPlmn"

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->EXTRA_IS_VALID_PLMN:Ljava/lang/String;

    .line 234
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    .line 236
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingTypeForVZW:I

    .line 240
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCB:Ljava/lang/String;

    .line 255
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    .line 256
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    .line 257
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I

    .line 258
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I

    .line 259
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    .line 260
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    .line 261
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    .line 262
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    .line 266
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    .line 267
    iput-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    .line 271
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmgcCallState:I

    .line 273
    const/16 v5, 0x1b58

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mKeepFakeDuration:I

    .line 277
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mVoiceCapable:Z

    .line 716
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 3907
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_UNKNOWN:I

    .line 3908
    iput v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_FALSE:I

    .line 3909
    iput v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_TRUE:I

    .line 4025
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

    .line 4127
    new-instance v5, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;

    .line 344
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 345
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 347
    .local v3, res:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 349
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    .line 351
    const v5, 0x7f090004

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    .line 352
    const v5, 0x7f090005

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    .line 353
    const v5, 0x1110046

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    .line 357
    const v5, 0x111003c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mVoiceCapable:Z

    .line 361
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateStatusBarNetworkSettings()V

    .line 369
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 370
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 373
    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 374
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v7, 0x1e1

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 380
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    .line 383
    const-string v5, " "

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 384
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v6, 0x1040555

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 386
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v5, :cond_0

    const-string v5, ""

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 387
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 388
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 391
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 392
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 393
    .local v2, handler:Landroid/os/Handler;
    new-instance v5, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v5}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 394
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v4

    .line 395
    .local v4, wifiMessenger:Landroid/os/Messenger;
    if-eqz v4, :cond_1

    .line 396
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6, v2, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 400
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 401
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 406
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 407
    const-string v5, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 409
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 415
    const-string v5, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 416
    const-string v5, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 420
    sget-boolean v5, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-eqz v5, :cond_2

    .line 421
    const-string v5, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111004b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    .line 426
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v5, :cond_3

    .line 427
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 429
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    :cond_3
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 434
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "data_roaming"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingObserver:Lcom/android/systemui/statusbar/policy/NetworkController$DataRoamingObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 440
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-ne v5, v6, :cond_4

    .line 441
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mobile_data"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataObserver;

    const/4 v8, -0x2

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 444
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    .line 449
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 451
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    .line 452
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return p1
.end method

.method static synthetic access$1608(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$1610(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;I)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/policy/NetworkController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->displaySignalStrength(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRoamingNotification()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmgcCallState:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/NetworkController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmgcCallState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mKeepFakeState:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mKeepFakeState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mKeepFakeDuration:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v0

    return v0
.end method

.method private checkCarrierWifiIcon()V
    .locals 6

    .prologue
    .line 1716
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1717
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 1718
    .local v2, ssid:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    .line 1720
    .local v1, networkid:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 1721
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCarrierWifiIcon: getSSID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getNetworkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->isLGTWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1724
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLGTWifiIcon(I)[[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    .line 1730
    :goto_0
    return-void

    .line 1729
    :cond_0
    const/4 v3, 0x0

    check-cast v3, [[I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    goto :goto_0
.end method

.method private final displaySignalStrength(I)V
    .locals 6
    .parameter "signalStrength"

    .prologue
    const v5, 0x7f020113

    .line 1062
    const/4 v0, -0x1

    .line 1065
    .local v0, iconLevel:I
    move v0, p1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1067
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1068
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : !isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_2

    .line 1071
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1075
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1077
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 1100
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I

    move-result-object v1

    .line 1101
    .local v1, iconList:[I
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1103
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1105
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 1107
    return-void

    .line 1072
    .end local v1           #iconList:[I
    :cond_2
    if-gez v0, :cond_0

    .line 1073
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_0

    .line 1082
    :cond_3
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySignalStrength : isCdma(), signalStrength :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_5

    .line 1085
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1091
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1092
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaEriIcon()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 1093
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCdmaEri(), mRoamingIconId = getCdmaEriIcon() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1086
    :cond_5
    if-gez v0, :cond_4

    .line 1087
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_2

    .line 1094
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1095
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 1096
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPhone.isNetworkRoaming(), mRoamingIconId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private final getCdmaEriIcon()I
    .locals 8

    .prologue
    const v3, 0x7f0200fd

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 3378
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_0

    .line 3379
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 3380
    .local v0, iconIndex:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 3382
    .local v1, iconMode:I
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCdmaEriIcon: iconIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " iconMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    sget-object v4, Lcom/android/systemui/statusbar/policy/NetworkController$2;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkController$Operator:[I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    sparse-switch v4, :sswitch_data_0

    .line 3392
    if-ne v0, v7, :cond_1

    .line 3411
    .end local v0           #iconIndex:I
    .end local v1           #iconMode:I
    :cond_0
    :goto_0
    return v2

    .line 3387
    .restart local v0       #iconIndex:I
    .restart local v1       #iconMode:I
    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getVZWEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 3389
    :sswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLGTEriIcon(II)I

    move-result v2

    goto :goto_0

    .line 3395
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v4, :cond_0

    .line 3396
    packed-switch v1, :pswitch_data_0

    .line 3402
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-eq v4, v7, :cond_0

    .line 3403
    const-string v2, "STATUSBAR-NetworkController"

    const-string v4, "getCdmaEriIcon() DeviceType == 1"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 3404
    goto :goto_0

    :pswitch_0
    move v2, v3

    .line 3398
    goto :goto_0

    .line 3400
    :pswitch_1
    const v2, 0x7f020148

    goto :goto_0

    .line 3385
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch

    .line 3396
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCurrentRSSIState()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 1051
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 1052
    const/4 v0, 0x0

    .line 1056
    :cond_0
    :goto_0
    return v0

    .line 1053
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmgcCallState:I

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mKeepFakeState:Z

    if-nez v1, :cond_0

    .line 1054
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDataSignalIconId(II)I
    .locals 2
    .parameter "inetCondition"
    .parameter "iconLevel"

    .prologue
    .line 2657
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 2668
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 2670
    .local v0, iconId:I
    :goto_0
    return v0

    .line 2659
    .end local v0           #iconId:I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 2660
    .restart local v0       #iconId:I
    goto :goto_0

    .line 2662
    .end local v0           #iconId:I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 2663
    .restart local v0       #iconId:I
    goto :goto_0

    .line 2665
    .end local v0           #iconId:I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, p1

    aget v0, v1, p2

    .line 2666
    .restart local v0       #iconId:I
    goto :goto_0

    .line 2657
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDataTypeIconIdForSPR()I
    .locals 4

    .prologue
    .line 3185
    const/4 v0, 0x0

    .line 3186
    .local v0, dataType:I
    const/4 v1, 0x0

    .line 3188
    .local v1, dormantDataType:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isGsmRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3189
    const v0, 0x7f02010c

    .line 3190
    const v1, 0x7f02010b

    .line 3199
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .end local v1           #dormantDataType:I
    :goto_1
    return v1

    .line 3191
    .restart local v1       #dormantDataType:I
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 3192
    const v0, 0x7f020115

    .line 3193
    const v1, 0x7f020114

    goto :goto_0

    .line 3195
    :cond_1
    const v0, 0x7f0200f3

    .line 3196
    const v1, 0x7f0200f1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 3199
    goto :goto_1
.end method

.method private final getLGTEriIcon(II)I
    .locals 1
    .parameter "iconIndex"
    .parameter "iconMode"

    .prologue
    .line 3435
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3436
    const/4 v0, 0x0

    .line 3438
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020113

    goto :goto_0
.end method

.method private getLGTWifiActivityIcon()I
    .locals 2

    .prologue
    .line 1763
    const v0, 0x7f02016b

    .line 1765
    .local v0, imgId:I
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    packed-switch v1, :pswitch_data_0

    .line 1780
    :goto_0
    return v0

    .line 1767
    :pswitch_0
    const v0, 0x7f020169

    .line 1768
    goto :goto_0

    .line 1770
    :pswitch_1
    const v0, 0x7f020168

    .line 1771
    goto :goto_0

    .line 1773
    :pswitch_2
    const v0, 0x7f02016a

    .line 1774
    goto :goto_0

    .line 1776
    :pswitch_3
    const v0, 0x7f02016b

    goto :goto_0

    .line 1765
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLGTWifiIcon(I)[[I
    .locals 6
    .parameter "networkid"

    .prologue
    .line 1744
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1746
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_2

    .line 1747
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1748
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 1749
    const-string v3, "StatusBar.NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLGTWifiIcon: networkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "eap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phase2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v3

    if-nez v3, :cond_0

    .line 1753
    :cond_1
    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_LGT:[[I

    .line 1759
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v3

    :cond_2
    const/4 v3, 0x0

    check-cast v3, [[I

    goto :goto_0
.end method

.method private getPhoneSignalDescriptionIconId(I)I
    .locals 2
    .parameter "iconLevel"

    .prologue
    .line 2680
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 2691
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 2693
    .local v0, iconId:I
    :goto_0
    return v0

    .line 2682
    .end local v0           #iconId:I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 2683
    .restart local v0       #iconId:I
    goto :goto_0

    .line 2685
    .end local v0           #iconId:I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_5_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 2686
    .restart local v0       #iconId:I
    goto :goto_0

    .line 2688
    .end local v0           #iconId:I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_6_LEVEL_SIGNAL_STRENGTH:[I

    aget v0, v1, p1

    .line 2689
    .restart local v0       #iconId:I
    goto :goto_0

    .line 2680
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getPhoneSignalIconList(I)[I
    .locals 2
    .parameter "inetCondition"

    .prologue
    .line 2633
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    packed-switch v1, :pswitch_data_0

    .line 2644
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 2646
    .local v0, iconList:[I
    :goto_0
    return-object v0

    .line 2635
    .end local v0           #iconList:[I
    :pswitch_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 2636
    .restart local v0       #iconList:[I
    goto :goto_0

    .line 2638
    .end local v0           #iconList:[I
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_5_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 2639
    .restart local v0       #iconList:[I
    goto :goto_0

    .line 2641
    .end local v0           #iconList:[I
    :pswitch_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_6_LEVEL_SIGNAL_STRENGTH:[[I

    aget-object v0, v1, p1

    .line 2642
    .restart local v0       #iconList:[I
    goto :goto_0

    .line 2633
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3
    .parameter "resId"

    .prologue
    .line 2514
    if-eqz p1, :cond_0

    .line 2515
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2517
    .local v1, res:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2522
    .end local v1           #res:Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 2518
    .restart local v1       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 2519
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v2, "(unknown)"

    goto :goto_0

    .line 2522
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    const-string v2, "(null)"

    goto :goto_0
.end method

.method private final getRoamingIcon()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_2

    .line 3448
    :cond_1
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 3449
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "NoService, mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3476
    :goto_0
    return-void

    .line 3450
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    .line 3452
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaEri()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3453
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaEriIcon()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 3454
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma(), isCdmaEri(), mRoamingIconId = getCdmaEriIcon() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCdmaEriIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3456
    :cond_4
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 3457
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "isCdma(), !isCdmaEri(), mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3460
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconDisplay:Z

    if-eqz v0, :cond_7

    .line 3465
    const v0, 0x7f020113

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 3467
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mRoamingIconForJPN:Z

    if-eqz v0, :cond_6

    .line 3468
    const v0, 0x7f0200fd

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 3471
    :cond_6
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhone.isNetworkRoaming(), DeviceType != 1, mRoamingIconId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3473
    :cond_7
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 3474
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "Nothing, mRoamingIconId = 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getUpdateDataNetType()V
    .locals 2

    .prologue
    .line 2703
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, ""

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2704
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "ORANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2705
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateORGDataNetType()V

    .line 2784
    :goto_0
    return-void

    .line 2707
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2708
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOYBDataNetType()V

    goto :goto_0

    .line 2710
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2711
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOYADataNetType()V

    goto :goto_0

    .line 2713
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OYC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2714
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOYCDataNetType()V

    goto :goto_0

    .line 2716
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "OLB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2717
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateOLBDataNetType()V

    goto :goto_0

    .line 2719
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VD2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2720
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateVD2DataNetType()V

    goto :goto_0

    .line 2722
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "VID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2723
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateVIDDataNetType()V

    goto :goto_0

    .line 2725
    :cond_6
    const-string v0, "DOR"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "MNX"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2727
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->update4GICONDataNetType()V

    goto :goto_0

    .line 2729
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    const-string v1, "TMH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2730
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTMHDataNetType()V

    goto :goto_0

    .line 2732
    :cond_9
    const-string v0, "PCT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2733
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updatePCTDataNetType()V

    goto/16 :goto_0

    .line 2735
    :cond_a
    const-string v0, "JDI"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2736
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateJDIDataNetType()V

    goto/16 :goto_0

    .line 2738
    :cond_b
    const-string v0, "ANC"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "DGT"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "COL"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2741
    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateLTEICONDataNetType()V

    goto/16 :goto_0

    .line 2743
    :cond_d
    const-string v0, "TFG"

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2744
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTFGDataNetType()V

    goto/16 :goto_0

    .line 2749
    :cond_e
    sget-object v0, Lcom/android/systemui/statusbar/policy/NetworkController$2;->$SwitchMap$com$android$systemui$statusbar$policy$NetworkController$Operator:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2782
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    .line 2751
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    goto/16 :goto_0

    .line 2754
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateATTDataNetType()V

    goto/16 :goto_0

    .line 2757
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTMODataNetType()V

    goto/16 :goto_0

    .line 2760
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateVZWDataNetType()V

    goto/16 :goto_0

    .line 2763
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSPRDataNetType()V

    goto/16 :goto_0

    .line 2767
    :pswitch_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateJPNDataNetType()V

    goto/16 :goto_0

    .line 2770
    :pswitch_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateZIGDataNetType()V

    goto/16 :goto_0

    .line 2773
    :pswitch_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAIODataNetType()V

    goto/16 :goto_0

    .line 2776
    :pswitch_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSPRDataNetType()V

    goto/16 :goto_0

    .line 2779
    :pswitch_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateCMCCDataNetType()V

    goto/16 :goto_0

    .line 2749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private final getVZWEriIcon(II)I
    .locals 2
    .parameter "iconIndex"
    .parameter "iconMode"

    .prologue
    const v0, 0x7f0200fd

    const/4 v1, 0x1

    .line 3415
    if-ne p1, v1, :cond_1

    .line 3416
    const/4 v0, 0x0

    .line 3430
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 3418
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 3422
    :pswitch_2
    const v0, 0x7f020148

    goto :goto_0

    .line 3424
    :pswitch_3
    if-nez p2, :cond_2

    .line 3425
    const v0, 0x7f0200ff

    goto :goto_0

    .line 3426
    :cond_2
    if-ne p2, v1, :cond_0

    .line 3427
    const v0, 0x7f020149

    goto :goto_0

    .line 3418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private hasService()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 893
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    .line 898
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 908
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 903
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 898
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .parameter "info"

    .prologue
    .line 1700
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1701
    .local v3, ssid:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1711
    .end local v3           #ssid:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1705
    .restart local v3       #ssid:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1706
    .local v2, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1707
    .local v1, net:Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1708
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 1711
    .end local v1           #net:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdmaLTE()Z
    .locals 2

    .prologue
    .line 3912
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->LTE_ON_CDMA_TRUE:I

    if-ne v0, v1, :cond_0

    .line 3913
    const/4 v0, 0x1

    .line 3915
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGsmRoaming()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 3175
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3180
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLGTWifi(Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"

    .prologue
    const/4 v0, 0x1

    .line 1733
    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1734
    const-string v1, "U+zone"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1740
    :cond_0
    :goto_0
    return v0

    .line 1737
    :cond_1
    const-string v1, "U+zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "U+ACN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1740
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMobileDataEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 4124
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshLocale()V
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    .line 1112
    return-void
.end method

.method private refreshOperatorLogoView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 4062
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowOperatorLogoIcon:Z

    if-eqz v0, :cond_0

    .line 4063
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "showOperatorLogoIcon !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 4065
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 4066
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "refreshOperatorLogoView NOT  IN_SVC_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4068
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4069
    invoke-static {v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    .line 4083
    :cond_0
    :goto_0
    return-void

    .line 4070
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 4071
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "SIMandOperatorMatched && mMoreIconView is gone "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4072
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4073
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4074
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0

    .line 4076
    :cond_2
    const-string v0, "StatusBar.NetworkController"

    const-string v1, "!SIMandOperatorMatched || mMoreIconView is visible "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4077
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4078
    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4079
    invoke-static {v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->setIsNetworkAvailable(Z)V

    goto :goto_0
.end method

.method private setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 1595
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    .line 1596
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    .line 1597
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    .line 1598
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    .line 1599
    return-void
.end method

.method private shouldShowDataIconForZVV()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4097
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 4099
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 4106
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v1, :cond_1

    .line 4113
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 4109
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4099
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private final update4GICONDataNetType()V
    .locals 2

    .prologue
    .line 3798
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3803
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 3804
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3805
    const v0, 0x7f0200f5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3806
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3808
    :cond_0
    return-void
.end method

.method private final updateAIODataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0a007f

    const/4 v2, 0x0

    .line 2930
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 2969
    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 2970
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2975
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 2976
    return-void

    .line 2932
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2933
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2934
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2938
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2939
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2940
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2948
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2949
    const v0, 0x7f0200f5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2950
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2954
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2955
    const v0, 0x7f02010f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2956
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2960
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2961
    const v0, 0x7f02010a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2962
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2930
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateATTDataNetType()V
    .locals 5

    .prologue
    const v4, 0x7f0a007f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2827
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    .line 2828
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 2869
    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 2870
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2875
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 2876
    return-void

    .line 2830
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2831
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2832
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2836
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2837
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2838
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2846
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2847
    const v0, 0x7f0200f6

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2848
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2850
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    goto :goto_0

    .line 2853
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_ATT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2854
    const v0, 0x7f020110

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2855
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2857
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    goto :goto_0

    .line 2860
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2861
    const v0, 0x7f02010a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2862
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2828
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 913
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    .line 917
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    .line 919
    return-void

    :cond_0
    move v0, v1

    .line 913
    goto :goto_0
.end method

.method private final updateCMCCDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0a0083

    const v2, 0x7f020103

    .line 2800
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 2802
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateCMCCDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 2823
    :goto_0
    :pswitch_0
    return-void

    .line 2809
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2810
    const v0, 0x7f0200f0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2811
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2812
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2816
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2817
    const v0, 0x7f0200f2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2818
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 2819
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2804
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectivity(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1836
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1838
    .local v0, connManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1841
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    .line 1842
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v3, :cond_3

    .line 1843
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 1844
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1850
    :goto_1
    const-string v3, "inetCondition"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1861
    .local v1, connectionStatus:I
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v6, 0x7

    if-ne v3, v6, :cond_4

    .line 1862
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    .line 1865
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v3, :cond_0

    .line 1866
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    .line 1878
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V

    .line 1882
    sget-boolean v3, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v3, :cond_1

    .line 1883
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->checkCarrierWifiIcon()V

    .line 1887
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 1888
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    .line 1889
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    .line 1890
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 1891
    return-void

    .end local v1           #connectionStatus:I
    :cond_2
    move v3, v5

    .line 1841
    goto :goto_0

    .line 1846
    :cond_3
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    .line 1847
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .line 1870
    .restart local v1       #connectionStatus:I
    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-eqz v3, :cond_5

    .line 1871
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherDisconnected:Z

    .line 1873
    :cond_5
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    goto :goto_2
.end method

.method private final updateDataIcon()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 1372
    const/4 v1, 0x1

    .line 1375
    .local v1, visible:Z
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    if-ne v2, v6, :cond_b

    .line 1378
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_8

    .line 1379
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v2, v4, :cond_7

    .line 1380
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v2, :pswitch_data_0

    .line 1391
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v5

    .line 1394
    .local v0, iconId:I
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 1400
    :goto_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v2, :cond_2

    .line 1401
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eq v2, v7, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 1405
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v5

    .line 1406
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 1407
    const/4 v1, 0x1

    .line 1411
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eq v2, v4, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->shouldShowDataIconForZVV()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1413
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v2, :cond_3

    .line 1414
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1416
    :cond_3
    const/4 v0, 0x0

    .line 1417
    const/4 v1, 0x1

    .line 1422
    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eq v2, v4, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1424
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1425
    const/4 v0, 0x0

    .line 1426
    const/4 v1, 0x1

    .line 1427
    const-string v2, "STATUSBAR-NetworkController"

    const-string v3, "CDMA_LTE : disabled icon displayed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNoSIMNotification()V

    .line 1484
    :cond_6
    :goto_3
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    .line 1485
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    .line 1486
    return-void

    .line 1382
    .end local v0           #iconId:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v6

    .line 1383
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1385
    .end local v0           #iconId:I
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v4

    .line 1386
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1388
    .end local v0           #iconId:I
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v7

    .line 1389
    .restart local v0       #iconId:I
    goto :goto_0

    .line 1396
    .end local v0           #iconId:I
    :cond_7
    const/4 v0, 0x0

    .line 1397
    .restart local v0       #iconId:I
    const/4 v1, 0x0

    goto :goto_1

    .line 1432
    .end local v0           #iconId:I
    :cond_8
    const v0, 0x7f020140

    .line 1433
    .restart local v0       #iconId:I
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v2, :cond_a

    .line 1434
    const v0, 0x7f020143

    .line 1438
    :cond_9
    :goto_4
    const/4 v1, 0x0

    goto :goto_2

    .line 1435
    :cond_a
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAttSimIcon:Z

    if-eqz v2, :cond_9

    .line 1436
    const v0, 0x7f020141

    goto :goto_4

    .line 1445
    .end local v0           #iconId:I
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_d

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-ne v2, v4, :cond_d

    .line 1446
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v2, :pswitch_data_1

    .line 1458
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v5

    .line 1467
    .restart local v0       #iconId:I
    :goto_5
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eq v2, v4, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1469
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1470
    const/4 v0, 0x0

    .line 1471
    const/4 v1, 0x1

    .line 1472
    const-string v2, "STATUSBAR-NetworkController"

    const-string v3, "CDMA : disabled icon displayed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdmaLTE()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1478
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isCdmaLTE - mSimState"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNoSIMNotification()V

    goto :goto_3

    .line 1448
    .end local v0           #iconId:I
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v6

    .line 1449
    .restart local v0       #iconId:I
    goto :goto_5

    .line 1451
    .end local v0           #iconId:I
    :pswitch_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v4

    .line 1452
    .restart local v0       #iconId:I
    goto :goto_5

    .line 1454
    .end local v0           #iconId:I
    :pswitch_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    aget v0, v2, v7

    .line 1455
    .restart local v0       #iconId:I
    goto :goto_5

    .line 1462
    .end local v0           #iconId:I
    :cond_d
    const/4 v0, 0x0

    .line 1463
    .restart local v0       #iconId:I
    const/4 v1, 0x0

    goto :goto_5

    .line 1380
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1446
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataNetType()V
    .locals 8

    .prologue
    const v7, 0x7f0a007f

    const v6, 0x7f0200f5

    const v5, 0x7f0200ee

    const v4, 0x7f0a0082

    const v3, 0x7f0200f0

    .line 1208
    const-string v1, "STATUSBAR-NetworkController"

    const-string v2, "updateDataNetType()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v1, :cond_0

    .line 1211
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1212
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1213
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0084

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 1352
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 1354
    return-void

    .line 1216
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v1, :pswitch_data_0

    .line 1336
    :pswitch_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_a

    .line 1337
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1338
    const v1, 0x7f02010a

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1339
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1218
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_1

    .line 1219
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1220
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1221
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1228
    :cond_1
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_2

    .line 1229
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1230
    const v1, 0x7f020109

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1231
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0088

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1238
    :cond_2
    :pswitch_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1239
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1240
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 1246
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v1, :cond_3

    .line 1247
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1248
    const v1, 0x7f02010d

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1249
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1252
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1253
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1254
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1261
    :pswitch_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v1, :cond_4

    .line 1262
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1263
    const v1, 0x7f02010e

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1264
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1267
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1268
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1269
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1276
    :pswitch_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_5

    .line 1278
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1279
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1280
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1287
    :cond_5
    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->LGT:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-ne v1, v2, :cond_6

    .line 1288
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1289
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1290
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1293
    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v1, :cond_7

    .line 1294
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1295
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1296
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1306
    :cond_7
    :pswitch_8
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1307
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1308
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1312
    :pswitch_9
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1314
    .local v0, show4GforLTE:Z
    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mLTEDataDistinguishable:Z

    if-eqz v1, :cond_8

    const-string v1, "1"

    const-string v2, "ril.lte_wideband"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1315
    const-string v1, "STATUSBAR-NetworkController"

    const-string v2, "LTE_WIDE_BAND!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1317
    const v1, 0x7f020111

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1318
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1322
    :cond_8
    if-eqz v0, :cond_9

    .line 1323
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1324
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1325
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0084

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1328
    :cond_9
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1329
    const v1, 0x7f02010f

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1330
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1342
    .end local v0           #show4GforLTE:Z
    :cond_a
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 1343
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 1344
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 1216
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private final updateJDIDataNetType()V
    .locals 2

    .prologue
    .line 3846
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3852
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 3853
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3854
    const v0, 0x7f0200f8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3855
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3857
    :cond_0
    return-void
.end method

.method private final updateJPNDataNetType()V
    .locals 2

    .prologue
    .line 2787
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 2789
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateJPNDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2792
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v1, 0x7f0200f5

    if-ne v0, v1, :cond_0

    .line 2793
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2794
    const v0, 0x7f02010f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2795
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 2797
    :cond_0
    return-void
.end method

.method private final updateLTEICONDataNetType()V
    .locals 2

    .prologue
    .line 3860
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3865
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 3866
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3867
    const v0, 0x7f02010f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3868
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3870
    :cond_0
    return-void
.end method

.method private updateNoSIMNotification()V
    .locals 8

    .prologue
    const/16 v7, 0x111

    .line 3923
    const-string v4, "ro.config.donot_nosim"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3924
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "do not show no sim notifiation"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3965
    :cond_0
    :goto_0
    return-void

    .line 3928
    :cond_1
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-nez v4, :cond_0

    .line 3932
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v5, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v5, :cond_2

    .line 3933
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v4, v7}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 3936
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3940
    .local v1, res:Landroid/content/res/Resources;
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mNoSIMNotificationForTMO:Z

    if-eqz v4, :cond_4

    .line 3941
    const v4, 0x7f0a0124

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3945
    .local v3, title:Ljava/lang/String;
    :goto_1
    const v4, 0x7f0a0125

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3947
    .local v2, text:Ljava/lang/String;
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x7f020140

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3955
    .local v0, builder:Landroid/app/Notification$Builder;
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseVzwSimIcon:Z

    if-eqz v4, :cond_5

    .line 3956
    const v4, 0x7f020143

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3961
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 3943
    .end local v0           #builder:Landroid/app/Notification$Builder;
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_4
    const v4, 0x7f0a0123

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #title:Ljava/lang/String;
    goto :goto_1

    .line 3957
    .restart local v0       #builder:Landroid/app/Notification$Builder;
    .restart local v2       #text:Ljava/lang/String;
    :cond_5
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mUseAttSimIcon:Z

    if-eqz v4, :cond_3

    .line 3958
    const v4, 0x7f020141

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_2
.end method

.method private final updateOLBDataNetType()V
    .locals 5

    .prologue
    const v4, 0x7f0a0083

    const v3, 0x7f02010e

    .line 3688
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3690
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOLBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3692
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 3693
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3694
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3695
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3699
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 3700
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    .line 3701
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3702
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3703
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3712
    :cond_1
    :goto_0
    return-void

    .line 3706
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3707
    const v0, 0x7f0200f0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3708
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateORGDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0a0082

    const v5, 0x7f02010e

    const v4, 0x7f0200f0

    const v3, 0x7f0a0083

    .line 3481
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3483
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateORGDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 3488
    :cond_0
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3490
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_5

    .line 3491
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3492
    const v0, 0x7f02010d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3493
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3510
    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 3511
    const-string v0, "TMU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "TMP"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3513
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    .line 3514
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3515
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3516
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3532
    :cond_4
    :goto_1
    return-void

    .line 3496
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3497
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3498
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3502
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3503
    const v0, 0x7f0200f2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3504
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3519
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3520
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3521
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 3525
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3526
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3527
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1
.end method

.method private final updateOYADataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0a0084

    const v5, 0x7f0200f5

    const v4, 0x7f0a0082

    const v3, 0x7f0200f0

    .line 3584
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYADataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3586
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v0, :cond_0

    .line 3587
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3588
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3589
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3593
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3594
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3595
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3596
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3600
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 3604
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3605
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3606
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3607
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3624
    :cond_3
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 3625
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3626
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3627
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3628
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3644
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 3645
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3646
    const v0, 0x7f02010f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3647
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3652
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 3653
    return-void

    .line 3610
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    .line 3611
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3612
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3613
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3616
    :cond_7
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3617
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3618
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3631
    :cond_8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_9

    .line 3632
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3633
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3634
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 3637
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3638
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3639
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1
.end method

.method private final updateOYBDataNetType()V
    .locals 5

    .prologue
    const v4, 0x7f0a0084

    const v3, 0x7f0200f5

    .line 3536
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYBDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3538
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    if-nez v0, :cond_0

    .line 3539
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3540
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3541
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3545
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3546
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3547
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3548
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3552
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 3556
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3557
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3558
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3563
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 3564
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3565
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3566
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3571
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 3572
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3573
    const v0, 0x7f02010f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3574
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3579
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 3580
    return-void
.end method

.method private final updateOYCDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0a0083

    .line 3656
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3657
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3685
    :cond_0
    :goto_0
    return-void

    .line 3660
    :cond_1
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOYCDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3662
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 3666
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_4

    .line 3667
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3668
    const v0, 0x7f02010e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3669
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3679
    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 3680
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3681
    const v0, 0x7f02010f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3682
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3672
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3673
    const v0, 0x7f02010d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3674
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1
.end method

.method private final updatePCTDataNetType()V
    .locals 2

    .prologue
    .line 3825
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3831
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    .line 3835
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3836
    const v0, 0x7f0200f5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3837
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3843
    :cond_1
    :goto_0
    return-void

    .line 3838
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 3839
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE_LTN:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3840
    const v0, 0x7f0200f8

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3841
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateRoamingNotification()V
    .locals 11

    .prologue
    const/16 v10, 0x222

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3971
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "data_roaming"

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v6, :cond_2

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    .line 3973
    const-string v5, "STATUSBAR-NetworkController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateRomaingNotification DataRoaming:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mDataRoamingTypeForVZW : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingTypeForVZW:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3975
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    const v8, 0x7f0200ff

    if-eq v5, v8, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mVoiceCapable:Z

    if-nez v5, :cond_3

    .line 3978
    :cond_0
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingTypeForVZW:I

    if-eqz v5, :cond_1

    .line 3979
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    invoke-virtual {v5, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3981
    iput v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingTypeForVZW:I

    .line 4023
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v5, v7

    .line 3971
    goto :goto_0

    .line 3984
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3985
    .local v2, res:Landroid/content/res/Resources;
    const v5, 0x7f0a016f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3987
    .local v4, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3988
    .local v1, currentRoamingType:I
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingSetting:Z

    if-eqz v5, :cond_7

    .line 3989
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mVoiceCapable:Z

    if-nez v5, :cond_6

    .line 3990
    :cond_5
    const v5, 0x7f0a0171

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3991
    .local v3, text:Ljava/lang/String;
    const/4 v1, 0x1

    .line 4005
    :goto_2
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingTypeForVZW:I

    if-eq v5, v1, :cond_1

    .line 4006
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v7, 0x7f0200bd

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, -0x2

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 4015
    .local v0, builder:Landroid/app/Notification$Builder;
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v5, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 4018
    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataRoamingTypeForVZW:I

    goto :goto_1

    .line 3993
    .end local v0           #builder:Landroid/app/Notification$Builder;
    .end local v3           #text:Ljava/lang/String;
    :cond_6
    const v5, 0x7f0a0170

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3994
    .restart local v3       #text:Ljava/lang/String;
    const/4 v1, 0x2

    goto :goto_2

    .line 3997
    .end local v3           #text:Ljava/lang/String;
    :cond_7
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mVoiceCapable:Z

    if-eqz v5, :cond_8

    .line 3998
    const v5, 0x7f0a0172

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3999
    .restart local v3       #text:Ljava/lang/String;
    const/4 v1, 0x3

    goto :goto_2

    .line 4001
    .end local v3           #text:Ljava/lang/String;
    :cond_8
    const-string v3, "No Notification"

    .line 4002
    .restart local v3       #text:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private final updateSPRDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f020115

    const v5, 0x7f0200f7

    const v4, 0x7f0a0082

    const v3, 0x7f0200f0

    const v2, 0x7f0200f3

    .line 3206
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "updateDataNetType()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_2

    .line 3209
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_1

    .line 3210
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3211
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3216
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3368
    :goto_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isGsmRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3369
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_GSM_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3370
    const v0, 0x7f02010c

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3372
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 3373
    return-void

    .line 3213
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3214
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto :goto_0

    .line 3219
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 3353
    :pswitch_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_e

    .line 3354
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3355
    const v0, 0x7f02010a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3360
    :goto_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3361
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3362
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 3221
    :pswitch_1
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_3

    .line 3222
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3226
    :goto_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3227
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_1

    .line 3224
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    goto :goto_3

    .line 3232
    :pswitch_2
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_4

    .line 3233
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3234
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3239
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3236
    :cond_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3237
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto :goto_4

    .line 3244
    :pswitch_3
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_5

    .line 3245
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3246
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3251
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3248
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3249
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto :goto_5

    .line 3257
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_7

    .line 3258
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_6

    .line 3259
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3260
    const v0, 0x7f02010d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3265
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3262
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3263
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto :goto_6

    .line 3268
    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_8

    .line 3269
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3270
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3275
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3272
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3273
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto :goto_7

    .line 3282
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_a

    .line 3283
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_9

    .line 3284
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3285
    const v0, 0x7f02010e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3290
    :goto_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3287
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3288
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto :goto_8

    .line 3293
    :cond_a
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_b

    .line 3294
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3295
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3300
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3297
    :cond_b
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3298
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto :goto_9

    .line 3331
    :pswitch_6
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_c

    .line 3332
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3333
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3338
    :goto_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3335
    :cond_c
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3336
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto :goto_a

    .line 3342
    :pswitch_7
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v0, :cond_d

    .line 3343
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3344
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3349
    :goto_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3346
    :cond_d
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3347
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto :goto_b

    .line 3357
    :cond_e
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G_SPR:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3358
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto/16 :goto_2

    .line 3219
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method private final updateSimState(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    .line 826
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 827
    .local v3, stateExtra:Ljava/lang/String;
    const-string v4, "ABSENT"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 830
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, absentReason:Ljava/lang/String;
    const-string v4, "PERM_DISABLED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 834
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 835
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:PERM_DISABLE"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    .end local v0           #absentReason:Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    .line 886
    return-void

    .line 837
    .restart local v0       #absentReason:Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 838
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:ABSENT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 842
    .end local v0           #absentReason:Ljava/lang/String;
    :cond_1
    const-string v4, "READY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 843
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 844
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:READY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 846
    :cond_2
    const-string v4, "LOCKED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 847
    const-string v4, "reason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 849
    .local v2, lockedReason:Ljava/lang/String;
    const-string v4, "PIN"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 850
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 851
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:PIN_REQUIRED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 853
    :cond_3
    const-string v4, "PUK"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 854
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 855
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:PUK_REQUIRED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 865
    :cond_4
    :try_start_0
    const-class v4, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v5, "NETWORK_LOCKED"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 870
    :goto_1
    :try_start_1
    const-class v4, Lcom/android/internal/telephony/IccCardConstants$State;

    const-string v5, "PERSO_LOCKED"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/IccCardConstants$State;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 876
    :goto_2
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:NETWORK_LOCKED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 866
    :catch_0
    move-exception v1

    .line 867
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "updateSimState: NETWORK_LOCKED is not a constant in State"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 871
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 872
    .restart local v1       #e:Ljava/lang/IllegalArgumentException;
    const-string v4, "StatusBar.NetworkController"

    const-string v5, "updateSimState: PERSO_LOCKED is not a constant in State"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 879
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    .end local v2           #lockedReason:Ljava/lang/String;
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 880
    const-string v4, "STATUSBAR-NetworkController"

    const-string v5, "updateSimState:UNKNOWN"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateStatusBarNetworkSettings()V
    .locals 2

    .prologue
    .line 4047
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getMaxLevelOfSignalStrengthIndicator()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    .line 4051
    invoke-static {}, Lcom/android/systemui/statusbar/Feature;->getOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    .line 4054
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ReplaceDataTypeIconAsOpBrand"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeBrand:Ljava/lang/String;

    .line 4057
    return-void
.end method

.method private final updateTFGDataNetType()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 3873
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3879
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 3902
    :cond_0
    :goto_0
    return-void

    .line 3882
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3887
    .local v0, NetworkSubstring:Ljava/lang/String;
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_3

    .line 3888
    const-string v1, "704"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "706"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3889
    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3890
    const v1, 0x7f0200f5

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3891
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0084

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3894
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 3895
    const-string v1, "334"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "716"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "734"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3896
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3897
    const v1, 0x7f02010f

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3898
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0
.end method

.method private final updateTMHDataNetType()V
    .locals 2

    .prologue
    .line 3811
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3817
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 3818
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3819
    const v0, 0x7f02010f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3820
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3822
    :cond_0
    return-void
.end method

.method private final updateTMODataNetType()V
    .locals 6

    .prologue
    const v5, 0x7f0a0082

    const v4, 0x7f0a007f

    const v3, 0x7f0200f4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2979
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    .line 2980
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 3037
    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 3038
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3043
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 3044
    return-void

    .line 2982
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2983
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2984
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2988
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2989
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2990
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2998
    :pswitch_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    .line 2999
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNet R -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3001
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3002
    const v0, 0x7f0200fb

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3003
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3006
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3007
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3008
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3013
    :pswitch_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    .line 3014
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataNet R -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3016
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3017
    const v0, 0x7f020112

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3018
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3021
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_TMO:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3022
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3023
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3028
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3029
    const v0, 0x7f02010a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3030
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 2980
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private final updateTelephonySignalStrength()V
    .locals 5

    .prologue
    const v4, 0x7f020272

    const v3, 0x7f02015c

    .line 1116
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_2

    .line 1117
    const-string v2, "STATUSBAR-NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength -mTransitionState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    if-eqz v2, :cond_1

    .line 1123
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getGsmSignalBar()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I

    .line 1205
    :goto_0
    return-void

    .line 1126
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMessageUpdateNotDone:Z

    .line 1127
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1134
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1139
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v2, :cond_3

    .line 1141
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1142
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    .line 1144
    :cond_3
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1145
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    .line 1150
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v2, :cond_7

    .line 1158
    :cond_5
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v2, :cond_6

    .line 1160
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1161
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_0

    .line 1163
    :cond_6
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1164
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1165
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_0

    .line 1172
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isCdma()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v2, :cond_9

    .line 1173
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1183
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    if-le v0, v2, :cond_a

    .line 1184
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength: iconLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too high"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMaxLevelOfSignalStrengthIndicator:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    .line 1192
    :cond_8
    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I

    move-result-object v1

    .line 1195
    .local v1, iconList:[I
    aget v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 1199
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1201
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_0

    .line 1179
    .end local v0           #iconLevel:I
    .end local v1           #iconList:[I
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0       #iconLevel:I
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_1

    .line 1187
    :cond_a
    if-gez v0, :cond_8

    .line 1188
    const-string v2, "StatusBar.NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength: iconLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is too small"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    goto :goto_2
.end method

.method private final updateVD2DataNetType()V
    .locals 3

    .prologue
    .line 3715
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3717
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVD2DataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 3720
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3721
    const v0, 0x7f02010f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3722
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3725
    :cond_0
    return-void
.end method

.method private final updateVIDDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0a0084

    const v5, 0x7f0a0082

    const v4, 0x7f0200f5

    const v3, 0x7f0200f0

    .line 3728
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataNetType()V

    .line 3730
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVIDDataNetType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3733
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3738
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3739
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3740
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3750
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 3753
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3758
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3759
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3760
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3770
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_6

    .line 3771
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302500"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302320"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302270"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "302490"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3776
    :cond_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3777
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3778
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3789
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_7

    .line 3790
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3791
    const v0, 0x7f02010f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3792
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3795
    :cond_7
    return-void

    .line 3743
    :cond_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3744
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3745
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3763
    :cond_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3764
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3765
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_1

    .line 3781
    :cond_a
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3782
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3783
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_2
.end method

.method private final updateVZWDataNetType()V
    .locals 7

    .prologue
    const v6, 0x7f0200ee

    const/4 v5, 0x0

    const v4, 0x7f0a0082

    const v3, 0x7f020103

    const v2, 0x7f0200f0

    .line 3050
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 3153
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_6

    .line 3154
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3155
    const v0, 0x7f02010a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3156
    const v0, 0x7f020106

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3157
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    .line 3170
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 3171
    return-void

    .line 3052
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_0

    .line 3053
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3054
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3055
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3056
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3063
    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_1

    .line 3064
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3065
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3066
    const v0, 0x7f020105

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3067
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3074
    :cond_1
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3075
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3076
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3077
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3083
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_2

    .line 3084
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3085
    const v0, 0x7f02010d

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3086
    const v0, 0x7f020107

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3087
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 3090
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3091
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3092
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3093
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3098
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 3099
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_H_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3100
    const v0, 0x7f02010e

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3101
    const v0, 0x7f020108

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3102
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0083

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3105
    :cond_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3106
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3107
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3114
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_4

    .line 3115
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3116
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3117
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3118
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3125
    :cond_4
    :pswitch_7
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAtLeastThreeGees:Z

    if-nez v0, :cond_5

    .line 3126
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_1X:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3127
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3128
    const v0, 0x7f020102

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3129
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0086

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3139
    :cond_5
    :pswitch_8
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3140
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3141
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3146
    :pswitch_9
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3147
    const v0, 0x7f0200f7

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3148
    const v0, 0x7f020104

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3149
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3160
    :cond_6
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_3G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 3161
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 3162
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeDisabledIconId:I

    .line 3163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto/16 :goto_0

    .line 3050
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private updateWifiIcons()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1672
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v1, :cond_2

    .line 1673
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 1674
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-eqz v0, :cond_0

    .line 1675
    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH_HIDEINANDOUT:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 1679
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v0, :cond_1

    .line 1680
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    if-eqz v0, :cond_1

    .line 1681
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 1687
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    .line 1697
    :goto_0
    return-void

    .line 1690
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    if-eqz v1, :cond_3

    .line 1691
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 1695
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 1693
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v1, :cond_4

    const v0, 0x7f02017a

    :cond_4
    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    goto :goto_1
.end method

.method private updateWifiState(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1632
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1633
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1634
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    .line 1668
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiIcons()V

    .line 1669
    return-void

    :cond_1
    move v4, v5

    .line 1634
    goto :goto_0

    .line 1637
    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1638
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1640
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 1641
    .local v3, wasConnected:Z
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_4

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    .line 1643
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v4, :cond_6

    if-nez v3, :cond_6

    .line 1645
    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 1646
    .local v1, info:Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_3

    .line 1647
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1649
    :cond_3
    if-eqz v1, :cond_5

    .line 1650
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 1655
    :goto_3
    sget-boolean v4, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v4, :cond_0

    .line 1656
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->checkCarrierWifiIcon()V

    goto :goto_1

    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_4
    move v4, v5

    .line 1641
    goto :goto_2

    .line 1652
    .restart local v1       #info:Landroid/net/wifi/WifiInfo;
    :cond_5
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 1659
    .end local v1           #info:Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v4, :cond_0

    .line 1660
    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    goto :goto_1

    .line 1662
    .end local v2           #networkInfo:Landroid/net/NetworkInfo;
    .end local v3           #wasConnected:Z
    :cond_7
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1663
    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    .line 1664
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    goto :goto_1
.end method

.method private updateWimaxIcons()V
    .locals 3

    .prologue
    .line 1812
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_2

    .line 1813
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_1

    .line 1814
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    if-eqz v0, :cond_0

    .line 1815
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 1818
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    .line 1827
    :goto_1
    return-void

    .line 1817
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    aget v0, v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_0

    .line 1821
    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    .line 1822
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a006e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 1825
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto :goto_1
.end method

.method private final updateWimaxState(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1786
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1787
    .local v0, action:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 1788
    .local v1, wasConnected:Z
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1789
    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1791
    .local v2, wimaxStatus:I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    .line 1806
    .end local v2           #wimaxStatus:I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getUpdateDataNetType()V

    .line 1808
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxIcons()V

    .line 1809
    return-void

    .restart local v2       #wimaxStatus:I
    :cond_1
    move v3, v4

    .line 1791
    goto :goto_0

    .line 1793
    .end local v2           #wimaxStatus:I
    :cond_2
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1794
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    goto :goto_1

    .line 1795
    :cond_3
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1796
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    .line 1798
    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    .line 1801
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    .line 1803
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v5, v4

    .line 1801
    goto :goto_2

    :cond_5
    move v3, v4

    .line 1803
    goto :goto_3
.end method

.method private final updateZIGDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f0a007f

    const/4 v2, 0x0

    .line 2880
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    packed-switch v0, :pswitch_data_0

    .line 2919
    :pswitch_0
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    .line 2920
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2925
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    .line 2926
    return-void

    .line 2882
    :pswitch_1
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2883
    iput v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2884
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2888
    :pswitch_2
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_E:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2889
    const v0, 0x7f020109

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2890
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0088

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2898
    :pswitch_3
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_4G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2899
    const v0, 0x7f0200f5

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2900
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0084

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2904
    :pswitch_4
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2905
    const v0, 0x7f02010f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2906
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v1, 0x7f0a0085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2910
    :pswitch_5
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_G:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 2911
    const v0, 0x7f02010a

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2912
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    goto :goto_0

    .line 2880
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addATTMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2622
    return-void
.end method

.method public addCombinedLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method public addEmergencyLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmergencyLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    return-void
.end method

.method public addMobileLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    return-void
.end method

.method public addMoreIconView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMoreIconView:Landroid/view/View;

    .line 489
    return-void
.end method

.method public addOperatorLogoIconView(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperatorLogoIconView:Landroid/view/View;

    .line 485
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 1
    .parameter "cluster"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 496
    return-void
.end method

.method public addWifiLabelView(Landroid/widget/TextView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 13
    .parameter "command"
    .parameter "args"

    .prologue
    .line 2534
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    if-nez v11, :cond_1

    const-string v11, "enter"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2535
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    .line 2536
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoWifiLevel:I

    .line 2537
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoInetCondition:I

    .line 2538
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoDataTypeIconId:I

    .line 2539
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMobileLevel:I

    .line 2616
    :cond_0
    return-void

    .line 2540
    :cond_1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    if-eqz v11, :cond_2

    const-string v11, "exit"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2541
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    .line 2542
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 2543
    .local v1, cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_0

    .line 2545
    .end local v1           #cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    if-eqz v11, :cond_0

    const-string v11, "network"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2546
    const-string v11, "airplane"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2547
    .local v0, airplane:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 2548
    const-string v11, "show"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2549
    .local v9, show:Z
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 2550
    .restart local v1       #cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    const v11, 0x7f020154

    invoke-interface {v1, v9, v11}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_1

    .line 2553
    .end local v1           #cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v9           #show:Z
    :cond_3
    const-string v11, "fully"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2554
    .local v3, fully:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 2555
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    :goto_2
    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoInetCondition:I

    .line 2557
    :cond_4
    const-string v11, "wifi"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2558
    .local v10, wifi:Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 2559
    const-string v11, "show"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2560
    .restart local v9       #show:Z
    const-string v11, "level"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2561
    .local v7, level:Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 2562
    const-string v11, "null"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, -0x1

    :goto_3
    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoWifiLevel:I

    .line 2565
    :cond_5
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoWifiLevel:I

    if-gez v11, :cond_8

    const v5, 0x7f02017a

    .line 2567
    .local v5, iconId:I
    :goto_4
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    goto :goto_5

    .line 2555
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #iconId:I
    .end local v7           #level:Ljava/lang/String;
    .end local v9           #show:Z
    .end local v10           #wifi:Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 2562
    .restart local v7       #level:Ljava/lang/String;
    .restart local v9       #show:Z
    .restart local v10       #wifi:Ljava/lang/String;
    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    sget v12, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto :goto_3

    .line 2565
    :cond_8
    sget-object v11, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    iget v12, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoInetCondition:I

    aget-object v11, v11, v12

    iget v12, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoWifiLevel:I

    aget v5, v11, v12

    goto :goto_4

    .line 2574
    .end local v7           #level:Ljava/lang/String;
    .end local v9           #show:Z
    :cond_9
    const-string v11, "mobile"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2575
    .local v8, mobile:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 2576
    const-string v11, "show"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2577
    .restart local v9       #show:Z
    const-string v11, "datatype"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2578
    .local v2, datatype:Ljava/lang/String;
    if-eqz v2, :cond_a

    .line 2579
    const-string v11, "1x"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const v11, 0x7f0200ee

    :goto_6
    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoDataTypeIconId:I

    .line 2598
    :cond_a
    sget-object v6, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 2599
    .local v6, icons:[[I
    const-string v11, "level"

    invoke-virtual {p2, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2600
    .restart local v7       #level:Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 2601
    const-string v11, "null"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    const/4 v11, -0x1

    :goto_7
    iput v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMobileLevel:I

    .line 2604
    :cond_b
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMobileLevel:I

    if-gez v11, :cond_15

    const v5, 0x7f02015c

    .line 2606
    .restart local v5       #iconId:I
    :goto_8
    iget-object v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    goto :goto_9

    .line 2579
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #iconId:I
    .end local v6           #icons:[[I
    .end local v7           #level:Ljava/lang/String;
    :cond_c
    const-string v11, "3g"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    const v11, 0x7f0200f0

    goto :goto_6

    :cond_d
    const-string v11, "4g"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    const v11, 0x7f0200f5

    goto :goto_6

    :cond_e
    const-string v11, "e"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const v11, 0x7f020109

    goto :goto_6

    :cond_f
    const-string v11, "g"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const v11, 0x7f02010a

    goto :goto_6

    :cond_10
    const-string v11, "h"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    const v11, 0x7f02010d

    goto :goto_6

    :cond_11
    const-string v11, "lte"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    const v11, 0x7f02010f

    goto :goto_6

    :cond_12
    const-string v11, "roam"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    const v11, 0x7f020113

    goto/16 :goto_6

    :cond_13
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 2601
    .restart local v6       #icons:[[I
    .restart local v7       #level:Ljava/lang/String;
    :cond_14
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x0

    aget-object v12, v6, v12

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    goto/16 :goto_7

    .line 2604
    :cond_15
    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoInetCondition:I

    aget-object v11, v6, v11

    iget v12, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMobileLevel:I

    aget v5, v11, v12

    goto/16 :goto_8
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2386
    const-string v0, "NetworkController state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2387
    const-string v1, "  %s network type %d (%s)"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnected:Z

    if-eqz v0, :cond_1

    const-string v0, "CONNECTED"

    :goto_0
    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mConnectedNetworkTypeName:Ljava/lang/String;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2390
    const-string v0, "  - telephony ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2391
    const-string v0, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2392
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2393
    const-string v0, "  hasService()="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2395
    const-string v0, "  mHspaDataDistinguishable="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2396
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHspaDataDistinguishable:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2397
    const-string v0, "  mDataConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2398
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2399
    const-string v0, "  mSimState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2400
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2401
    const-string v0, "  mPhoneState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2402
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2404
    const-string v0, "  mEmgcCallState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2405
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mEmgcCallState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2407
    const-string v0, "  mDataState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2408
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2409
    const-string v0, "  mDataActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2410
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2411
    const-string v0, "  mDataNetType="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2412
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2413
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2414
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2415
    const-string v0, "  mServiceState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2416
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2417
    const-string v0, "  mSignalStrength="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2418
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2419
    const-string v0, "  mLastSignalLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2420
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSignalLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2421
    const-string v0, "  mNetworkName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2422
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2423
    const-string v0, "  mNetworkNameDefault="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2424
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2425
    const-string v0, "  mNetworkNameSeparator="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2426
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2427
    const-string v0, "  mPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2428
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2429
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2430
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2431
    const-string v0, "  mDataDirectionIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2432
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2433
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2434
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2435
    const-string v0, "  mDataSignalIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2436
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2437
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2438
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2439
    const-string v0, "  mDataTypeIconId="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2440
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2441
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2442
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2444
    const-string v0, "  - wifi ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2445
    const-string v0, "  mWifiEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2446
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2447
    const-string v0, "  mWifiConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2448
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2449
    const-string v0, "  mWifiRssi="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2450
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiRssi:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2451
    const-string v0, "  mWifiLevel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2452
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLevel:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2453
    const-string v0, "  mWifiSsid="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2454
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2455
    const-string v0, "  mWifiIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2457
    const-string v0, "  mWifiActivity="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2458
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2460
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSupported:Z

    if-eqz v0, :cond_0

    .line 2461
    const-string v0, "  - wimax ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2462
    const-string v0, "  mIsWimaxEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2463
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2464
    const-string v0, "  mWimaxConnected="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2465
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2466
    const-string v0, "  mWimaxIdle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2467
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIdle:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2468
    const-string v0, "  mWimaxIconId=0x%08x/%s"

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2470
    const-string v0, "  mWimaxSignal=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxSignal:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2471
    const-string v0, "  mWimaxState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2472
    const-string v0, "  mWimaxExtraState=%d"

    new-array v1, v4, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxExtraState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2475
    :cond_0
    const-string v0, "  - Bluetooth ----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2476
    const-string v0, "  mBtReverseTethered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2479
    const-string v0, "  - connectivity ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2480
    const-string v0, "  mInetCondition="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2481
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2483
    const-string v0, "  - icons ------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2484
    const-string v0, "  mLastPhoneSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2485
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2486
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2487
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2488
    const-string v0, "  mLastDataDirectionIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2489
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2490
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2491
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2492
    const-string v0, "  mLastDataDirectionOverlayIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2493
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2495
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2496
    const-string v0, "  mLastWifiIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2497
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2498
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2499
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2500
    const-string v0, "  mLastCombinedSignalIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2501
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2502
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2503
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2504
    const-string v0, "  mLastDataTypeIconId=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2505
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2506
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2507
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2508
    const-string v0, "  mLastCombinedLabel="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2509
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2510
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2511
    return-void

    .line 2387
    :cond_1
    const-string v0, "DISCONNECTED"

    goto/16 :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isCdmaEri()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1357
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_1

    .line 1358
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 1359
    .local v0, iconIndex:I
    if-eq v0, v2, :cond_1

    .line 1360
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 1361
    .local v1, iconMode:I
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_1

    .line 1367
    .end local v0           #iconIndex:I
    .end local v1           #iconMode:I
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const v4, 0x7f020111

    const v3, 0x7f02010f

    const/4 v5, 0x1

    const v2, 0x1040555

    const/4 v10, 0x0

    .line 590
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 591
    .local v7, action:Ljava/lang/String;
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    :cond_0
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - RSSI_CHANGED_ACTION, WIFI_STATE, NETWORK_STATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWifiState(Landroid/content/Intent;)V

    .line 596
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 712
    :cond_1
    :goto_0
    return-void

    .line 597
    :cond_2
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 598
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ACTION_SIM_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateSimState(Landroid/content/Intent;)V

    .line 600
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateDataIcon()V

    .line 601
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 602
    :cond_3
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 603
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - SPN_STRINGS_UPDATED_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 606
    .local v9, plmn:Ljava/lang/String;
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_4

    .line 607
    const-string v0, "TW_TAG"

    const-string v1, "mDisplayPlmnIcon == true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const-string v0, "isValidPlmn"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 609
    const/4 v9, 0x0

    .line 613
    :cond_4
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 619
    const-string v0, "showSpn"

    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "showPlmn"

    invoke-virtual {p2, v2, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0, v0, v1, v2, v9}, Lcom/android/systemui/statusbar/policy/NetworkController;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 625
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshOperatorLogoView()V

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto :goto_0

    .line 628
    .end local v9           #plmn:Ljava/lang/String;
    :cond_5
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 630
    :cond_6
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - CONNECTIVITY_ACTION, INET_CONDITION_ACTION"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateConnectivity(Landroid/content/Intent;)V

    .line 632
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 633
    :cond_7
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 634
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ACTION_CONFIGURATION_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_8

    .line 636
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    .line 648
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshLocale()V

    .line 649
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 639
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 640
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto :goto_1

    .line 643
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto :goto_1

    .line 651
    :cond_a
    const-string v0, "com.sec.android.LTE_WIDEBAND_INFO"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 652
    const-string v0, "ril.lte_wideband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 653
    .local v8, currentBandwidth:Ljava/lang/String;
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() - LTE_WIDEBAND_INFO :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string v0, "1"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 656
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    const v1, 0x7f0200f5

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    if-ne v0, v3, :cond_1

    .line 657
    :cond_b
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "LTE_WIDEBAND_INFO - Change to LTE+ !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 659
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE_PLUS:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 660
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 663
    :cond_c
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    if-ne v0, v4, :cond_1

    .line 664
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "LTE_WIDEBAND_INFO - Change to LTE !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 666
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_LTE:[[I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mInetCondition:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    .line 667
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 671
    .end local v8           #currentBandwidth:Ljava/lang/String;
    :cond_d
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 672
    const-string v0, "STATUSBAR-NetworkController"

    const-string v1, "onReceive() - ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshLocale()V

    .line 674
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateAirplaneMode()V

    .line 676
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateTelephonySignalStrength()V

    .line 678
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 679
    :cond_e
    const-string v0, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 682
    :cond_f
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateWimaxState(Landroid/content/Intent;)V

    .line 683
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 684
    :cond_10
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 686
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNoSIMNotification()V

    .line 688
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v0, :cond_11

    .line 689
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 691
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 695
    :cond_12
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    goto/16 :goto_0

    .line 701
    :cond_13
    const-string v0, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    const v1, 0x104057a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 703
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    const-string v0, "cbMsgBody"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 704
    :cond_14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0

    .line 706
    :cond_15
    const-string v0, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPlmn:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    goto/16 :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V
    .locals 10
    .parameter "cluster"

    .prologue
    const v5, 0x7f020142

    const/4 v3, 0x2

    const/4 v9, 0x0

    const/4 v1, 0x1

    .line 499
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDemoMode:Z

    if-eqz v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 502
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setRoamingIcon(I)V

    .line 503
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v0, :cond_7

    .line 504
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 508
    const-string v0, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: DATA_SUSPENDED : "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-interface {p1, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    .line 536
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiEnabled:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v0, :cond_9

    move v0, v1

    :goto_2
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 550
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mSimIconForCHN:Z

    if-eqz v0, :cond_3

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v2, :cond_3

    .line 552
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 553
    iput v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 557
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-eqz v0, :cond_b

    .line 559
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_a

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_3
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V

    .line 577
    :goto_4
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    if-eqz v0, :cond_d

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_5
    :goto_5
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    invoke-interface {p1, v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setIsAirplaneMode(ZI)V

    goto/16 :goto_0

    .line 512
    :cond_6
    const-string v0, "StatusBar.NetworkController"

    const-string v2, "refreshSignalCluster: else : "

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    goto :goto_1

    .line 518
    :cond_7
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshSignalCluster: data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setDataState(I)V

    .line 520
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setBtTetherState(Z)V

    .line 523
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v0, :cond_8

    .line 524
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setHasService(Z)V

    .line 528
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v0

    sget-object v2, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    if-ne v0, v2, :cond_2

    .line 529
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->shouldShowDataIconForZVV()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setHasService(Z)V

    goto/16 :goto_1

    :cond_9
    move v0, v9

    .line 536
    goto/16 :goto_2

    .line 559
    :cond_a
    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    goto/16 :goto_3

    .line 568
    :cond_b
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_c

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    :goto_6
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    iget v6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object v2, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto :goto_6

    :cond_d
    move v1, v9

    .line 577
    goto/16 :goto_5
.end method

.method refreshViews()V
    .locals 18

    .prologue
    .line 1896
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    .line 1898
    .local v6, context:Landroid/content/Context;
    const/4 v5, 0x0

    .line 1899
    .local v5, combinedSignalIconId:I
    const/4 v3, 0x0

    .line 1900
    .local v3, combinedActivityIconId:I
    const-string v4, ""

    .line 1901
    .local v4, combinedLabel:Ljava/lang/String;
    const-string v14, ""

    .line 1902
    .local v14, wifiLabel:Ljava/lang/String;
    const-string v11, ""

    .line 1904
    .local v11, mobileLabel:Ljava/lang/String;
    const-string v10, ""

    .line 1907
    .local v10, mATTmobileLabel:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isEmergencyOnly()Z

    move-result v7

    .line 1909
    .local v7, emergencyOnly:Z
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-nez v15, :cond_c

    .line 1910
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1911
    const-string v11, ""

    .line 2055
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v15, :cond_1d

    .line 2056
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    if-nez v15, :cond_1a

    .line 2057
    const v15, 0x7f0a00ac

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2058
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 2096
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 2097
    sget-boolean v15, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v15, :cond_1c

    sget-boolean v15, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v15, :cond_1c

    .line 2098
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v15, :cond_3

    .line 2099
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    .line 2100
    .local v12, serviceState:I
    if-eqz v12, :cond_2

    const/4 v15, 0x1

    if-eq v15, v12, :cond_2

    const/4 v15, 0x2

    if-ne v15, v12, :cond_3

    .line 2106
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 2112
    .end local v12           #serviceState:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    .line 2113
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2122
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-eqz v15, :cond_4

    .line 2123
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v16, 0x7f0a0029

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2124
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    .line 2125
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v16, 0x7f0a008b

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2128
    const-string v15, "STATUSBAR-NetworkController"

    const-string v16, "mBluetoothTethered: mDataTypeIconId is BT tether icon"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTetherIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2131
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2132
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2144
    :cond_4
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    if-eqz v15, :cond_23

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    if-eqz v15, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v15, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v15

    if-nez v15, :cond_23

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v15

    if-nez v15, :cond_23

    .line 2153
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    const v16, 0x7f0a008c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 2155
    const v15, 0x7f020154

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneIconId:I

    .line 2156
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 2159
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2161
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-eqz v15, :cond_1f

    .line 2163
    const-string v11, ""

    .line 2219
    :cond_7
    :goto_4
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mUseKorRSSIAlgorithm:Z

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z

    if-nez v15, :cond_8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    const v16, 0x7f020272

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 2220
    :cond_8
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    .line 2225
    :cond_9
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mRoamingOngoingForVZW:Z

    if-eqz v15, :cond_a

    .line 2226
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->updateRoamingNotification()V

    .line 2254
    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    if-ne v15, v3, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastMobileActivityIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiActivityIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_28

    .line 2269
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_28

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;

    .line 2270
    .local v2, cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    goto :goto_5

    .line 1928
    .end local v2           #cluster:Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 1932
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v15, :cond_d

    .line 1933
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 1934
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 1939
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-eqz v15, :cond_19

    .line 1940
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 1942
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-nez v15, :cond_12

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataNetType:I

    const/16 v16, 0xd

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mDataTypeForSPR:Z

    if-eqz v15, :cond_12

    .line 1944
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v15, :pswitch_data_0

    .line 1955
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    if-eqz v15, :cond_11

    .line 1956
    const v15, 0x7f0200c2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2024
    :cond_e
    :goto_6
    move-object v4, v11

    .line 2025
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2026
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2027
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2034
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mOperator:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->getOperatorFromString(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-result-object v15

    sget-object v16, Lcom/android/systemui/statusbar/policy/NetworkController$Operator;->ZVV:Lcom/android/systemui/statusbar/policy/NetworkController$Operator;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_10

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->shouldShowDataIconForZVV()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 2036
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileDataEnabled:Z

    if-eqz v15, :cond_f

    .line 2037
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2041
    :cond_f
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 2046
    :cond_10
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mUseDisabledDataIcon:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2048
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2049
    const-string v15, "STATUSBAR-NetworkController"

    const-string v16, "Data Activity icon disapeared."

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1946
    :pswitch_0
    const v15, 0x7f0200c0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_6

    .line 1949
    :pswitch_1
    const v15, 0x7f0200c3

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_6

    .line 1952
    :pswitch_2
    const v15, 0x7f0200c1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_6

    .line 1958
    :cond_11
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_6

    .line 1962
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    if-nez v15, :cond_13

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeTMOstyle:Z

    if-nez v15, :cond_13

    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v15, :cond_16

    .line 1963
    :cond_13
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v15, :pswitch_data_1

    .line 1979
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeATTstyle:Z

    if-eqz v15, :cond_15

    .line 1980
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 1986
    :goto_8
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v15, :cond_e

    .line 1987
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataTypeIconIdForSPR()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    goto/16 :goto_6

    .line 1965
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_8

    .line 1968
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const/16 v16, 0x2

    aget v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_8

    .line 1971
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const/16 v16, 0x3

    aget v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_8

    .line 1974
    :pswitch_6
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mDataTypeIconForUsingTriband:Z

    if-eqz v15, :cond_14

    .line 1975
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_8

    .line 1982
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataIconList:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_8

    .line 1990
    :cond_16
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    packed-switch v15, :pswitch_data_2

    .line 2006
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    if-eqz v15, :cond_18

    .line 2007
    const v15, 0x7f02015a

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    .line 2014
    :goto_9
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mDataIconForCHN:Z

    if-eqz v15, :cond_e

    .line 2015
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasService()Z

    move-result v15

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-eq v15, v0, :cond_17

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_e

    .line 2019
    const-string v15, "StatusBar.NetworkController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "refreshViews: DATA_SUSPENDED : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataActivity:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_6

    .line 1992
    :pswitch_7
    const v15, 0x7f020155

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_9

    .line 1995
    :pswitch_8
    const v15, 0x7f02015d

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_9

    .line 1998
    :pswitch_9
    const v15, 0x7f020157

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_9

    .line 2009
    :cond_18
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto :goto_9

    .line 2030
    :cond_19
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileActivityIconId:I

    goto/16 :goto_7

    .line 2060
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiSsid:Ljava/lang/String;

    .line 2064
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivity:I

    packed-switch v15, :pswitch_data_3

    .line 2082
    :goto_a
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mHideWifiInAndOut:Z

    if-eqz v15, :cond_1b

    .line 2083
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    .line 2088
    :cond_1b
    sget-boolean v15, Lcom/android/systemui/statusbar/Feature;->mShowCarrierWifiIcon:Z

    if-eqz v15, :cond_1

    .line 2089
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiCarrierIcon:[[I

    if-eqz v15, :cond_1

    .line 2090
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getLGTWifiActivityIcon()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 2067
    :pswitch_a
    const v15, 0x7f020155

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_a

    .line 2070
    :pswitch_b
    const v15, 0x7f02015d

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_a

    .line 2073
    :pswitch_c
    const v15, 0x7f020157

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_a

    .line 2076
    :pswitch_d
    const v15, 0x7f02015a

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiActivityIconId:I

    goto :goto_a

    .line 2110
    :cond_1c
    move-object v4, v14

    goto/16 :goto_2

    .line 2115
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v15, :cond_1e

    .line 2116
    const-string v14, ""

    goto/16 :goto_3

    .line 2118
    :cond_1e
    const v15, 0x7f0a00ab

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    .line 2165
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v15, :cond_22

    .line 2167
    const-string v14, ""

    .line 2169
    sget-boolean v15, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v15, :cond_20

    .line 2170
    sget-boolean v15, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v15, :cond_21

    .line 2171
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 2181
    :cond_20
    :goto_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2182
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    goto/16 :goto_4

    .line 2173
    :cond_21
    move-object v4, v11

    goto :goto_b

    .line 2178
    :cond_22
    const v15, 0x7f0a00ab

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2179
    move-object v4, v14

    goto :goto_b

    .line 2186
    :cond_23
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataConnected:Z

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiConnected:Z

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxConnected:Z

    if-nez v15, :cond_7

    .line 2190
    const v15, 0x7f0a00ab

    invoke-virtual {v6, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2192
    sget-boolean v15, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v15, :cond_25

    sget-boolean v15, Lcom/android/systemui/statusbar/BaseStatusBar;->supportVoice:Z

    if-eqz v15, :cond_25

    .line 2193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v15, :cond_25

    .line 2194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    .line 2195
    .restart local v12       #serviceState:I
    if-eqz v12, :cond_24

    const/4 v15, 0x1

    if-eq v15, v12, :cond_24

    const/4 v15, 0x2

    if-ne v15, v12, :cond_25

    .line 2201
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 2208
    .end local v12           #serviceState:I
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v15, :cond_26

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 2210
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mHasMobileDataFeature:Z

    if-eqz v15, :cond_27

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionDataType:Ljava/lang/String;

    :goto_d
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 2213
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    .line 2215
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->getRoamingIcon()V

    goto/16 :goto_4

    .line 2208
    :cond_26
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    goto :goto_c

    .line 2210
    :cond_27
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_d

    .line 2274
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_29

    .line 2275
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mAirplaneMode:Z

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastAirplaneMode:Z

    .line 2278
    :cond_29
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_2a

    .line 2279
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastLocale:Ljava/util/Locale;

    .line 2283
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_2b

    .line 2284
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mBluetoothTethered:Z

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastBluetoothTethered:Z

    .line 2289
    :cond_2b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_2c

    .line 2290
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastPhoneSignalIconId:I

    .line 2294
    :cond_2c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_2d

    .line 2295
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataDirectionIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionIconId:I

    .line 2299
    :cond_2d
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_2e

    .line 2300
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWifiIconId:I

    .line 2304
    :cond_2e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_2f

    .line 2305
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWimaxIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastWimaxIconId:I

    .line 2308
    :cond_2f
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    if-eq v15, v5, :cond_30

    .line 2309
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedSignalIconId:I

    .line 2313
    :cond_30
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_31

    .line 2314
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataTypeIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataTypeIconId:I

    .line 2318
    :cond_31
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    if-eq v15, v3, :cond_32

    .line 2319
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataDirectionOverlayIconId:I

    .line 2323
    :cond_32
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_33

    .line 2324
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCombinedLabel:Ljava/lang/String;

    .line 2325
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2326
    .local v1, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_e
    if-ge v8, v1, :cond_33

    .line 2327
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mCombinedLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2328
    .local v13, v:Landroid/widget/TextView;
    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2326
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 2333
    .end local v1           #N:I
    .end local v8           #i:I
    .end local v13           #v:Landroid/widget/TextView;
    :cond_33
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2334
    .restart local v1       #N:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_f
    if-ge v8, v1, :cond_35

    .line 2335
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mWifiLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2336
    .restart local v13       #v:Landroid/widget/TextView;
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2337
    const-string v15, ""

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_34

    .line 2338
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2334
    :goto_10
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 2340
    :cond_34
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    .line 2345
    .end local v13           #v:Landroid/widget/TextView;
    :cond_35
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2346
    const/4 v8, 0x0

    :goto_11
    if-ge v8, v1, :cond_36

    .line 2347
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2348
    .restart local v13       #v:Landroid/widget/TextView;
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2346
    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    .line 2360
    .end local v13           #v:Landroid/widget/TextView;
    :cond_36
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2361
    const/4 v8, 0x0

    :goto_12
    if-ge v8, v1, :cond_38

    .line 2362
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 2363
    .restart local v13       #v:Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-nez v15, :cond_37

    .line 2364
    const/16 v15, 0x8

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2365
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2366
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/view/View;->setVisibility(I)V

    .line 2367
    const-string v15, "STATUSBAR-NetworkController"

    const-string v16, "update carrier label"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    :goto_13
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 2369
    :cond_37
    invoke-virtual {v13, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 2375
    .end local v13           #v:Landroid/widget/TextView;
    :cond_38
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_39

    .line 2376
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mRoamingIconId:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastRoamingIconId:I

    .line 2379
    :cond_39
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v15, v0, :cond_3a

    .line 2380
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataState:I

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastDataState:I

    .line 2383
    :cond_3a
    return-void

    .line 1944
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1963
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1990
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2064
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public setStackedMode(Z)V
    .locals 1
    .parameter "stacked"

    .prologue
    .line 585
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataAndWifiStacked:Z

    .line 586
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1494
    .local v1, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1497
    .local v0, something:Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1498
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v4, :cond_0

    if-ne p3, v4, :cond_0

    .line 1499
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1500
    const/4 p1, 0x0

    .line 1505
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1506
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1507
    const/4 v0, 0x1

    .line 1509
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1510
    if-eqz v0, :cond_2

    .line 1511
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1514
    const/4 v0, 0x1

    .line 1516
    :cond_3
    if-eqz v0, :cond_8

    .line 1518
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_7

    .line 1519
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1520
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 1521
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 1544
    :goto_0
    return-void

    .line 1522
    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_5

    .line 1524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x5

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 1525
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 1526
    :cond_5
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->canStatusBarHide:Z

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v3, 0xb

    if-le v2, v3, :cond_6

    .line 1527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v1, v5, v3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 1528
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 1530
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 1531
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 1534
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0

    .line 1537
    :cond_8
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v2, :cond_9

    .line 1538
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mATTNetworkName:Ljava/lang/String;

    .line 1539
    const-string v2, ""

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1541
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"
    .parameter "showCB"
    .parameter "CBmsg"

    .prologue
    const/4 v4, 0x1

    .line 1555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1556
    .local v1, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1557
    .local v0, something:Z
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mLastCB:Ljava/lang/String;

    .line 1559
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1560
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v4, :cond_0

    if-ne p3, v4, :cond_0

    .line 1561
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1562
    const/4 p1, 0x0

    .line 1566
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1567
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    const/4 v0, 0x1

    .line 1570
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1571
    if-eqz v0, :cond_2

    .line 1572
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1574
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1575
    const/4 v0, 0x1

    .line 1577
    :cond_3
    if-eqz p5, :cond_5

    if-eqz p6, :cond_5

    .line 1578
    if-eqz v0, :cond_4

    .line 1579
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    :cond_4
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1582
    const/4 v0, 0x1

    .line 1585
    :cond_5
    if-eqz v0, :cond_6

    .line 1586
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    .line 1591
    :goto_0
    return-void

    .line 1588
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController;->mNetworkName:Ljava/lang/String;

    goto :goto_0
.end method
