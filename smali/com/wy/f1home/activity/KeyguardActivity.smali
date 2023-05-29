.class public Lcom/wy/f1home/activity/KeyguardActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "KeyguardActivity.java"

# interfaces
.implements Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver$updateLegacyVoiceMailListen;


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final UPDATE_CALL_ICON:I = 0x4b6

.field private static final UPDATE_MMS_ICON:I = 0x33a

.field private static final UPDATE_VOICE_MAIL_ICON:I = 0x4b7

.field public static mPreferenceName:Ljava/lang/String; = "shortcuts_share"


# instance fields
.field private final MY_PERMISSIONS_READ_CALL_LOG:I

.field private final MY_PERMISSIONS_READ_SMS:I

.field private final MY_PERMISSIONS_READ_SMS_CALL_LOG:I

.field private final MY_PERMISSIONS_WRITE_CALL_LOG:I

.field private callContentObserver:Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;

.field private listener:Lcom/wy/f1home/uitl/BatteryListener;

.field public mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

.field mCarrierName:Landroid/widget/TextView;

.field mCharging:Landroid/widget/TextView;

.field final mHandler:Landroid/os/Handler;

.field mMissview:Lcom/wy/f1home/Keyguard/MissView;

.field mPermissionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mSimListener:Lcom/wy/f1home/uitl/SimListener;

.field permissions:[Ljava/lang/String;

.field private smsContentObserver:Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "_id"

    const-string v1, "number"

    const-string v2, "voicemail_uri"

    const-string v3, "presentation"

    const-string v4, "subscription_component_name"

    const-string v5, "subscription_id"

    const-string v6, "transcription"

    const-string v7, "countryiso"

    const-string v8, "date"

    .line 556
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wy/f1home/activity/KeyguardActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 75
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->smsContentObserver:Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;

    .line 78
    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->callContentObserver:Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;

    const/4 v0, 0x1

    .line 80
    iput v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->MY_PERMISSIONS_READ_CALL_LOG:I

    const/4 v0, 0x2

    .line 81
    iput v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->MY_PERMISSIONS_READ_SMS:I

    const/4 v0, 0x3

    .line 82
    iput v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->MY_PERMISSIONS_READ_SMS_CALL_LOG:I

    const/4 v0, 0x4

    .line 83
    iput v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->MY_PERMISSIONS_WRITE_CALL_LOG:I

    const-string v1, "android.permission.READ_CALL_LOG"

    const-string v2, "android.permission.READ_SMS"

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "android.permission.WRITE_CALL_LOG"

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v6, "com.android.voicemail.permission.WRITE_VOICEMAIL"

    .line 412
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->permissions:[Ljava/lang/String;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mPermissionList:Ljava/util/List;

    .line 512
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/wy/f1home/activity/KeyguardActivity$3;

    invoke-direct {v1, p0}, Lcom/wy/f1home/activity/KeyguardActivity$3;-><init>(Lcom/wy/f1home/activity/KeyguardActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mHandler:Landroid/os/Handler;

    .line 1000
    new-instance v0, Lcom/wy/f1home/activity/KeyguardActivity$4;

    invoke-direct {v0, p0}, Lcom/wy/f1home/activity/KeyguardActivity$4;-><init>(Lcom/wy/f1home/activity/KeyguardActivity;)V

    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/wy/f1home/activity/KeyguardActivity;)I
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getMissMmsCount()I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/wy/f1home/activity/KeyguardActivity;)I
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getMissCallCount()I

    move-result p0

    return p0
.end method

.method private changeRingModel(Landroid/content/Context;)V
    .locals 5

    const-string v0, "audio"

    .line 923
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    const-string v0, "wuyu"

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audioManager.getRingerMode() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 927
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 929
    :cond_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "vibrator"

    .line 930
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v3, 0x3e8

    .line 931
    invoke-virtual {v0, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V

    .line 932
    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 934
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 936
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 367
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 368
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 371
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    const/16 v3, 0xf0

    const/16 v4, 0x140

    .line 374
    invoke-static {v3, v4, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 376
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 377
    invoke-virtual {p0, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 379
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method private getMissCallCount()I
    .locals 9

    const-string v0, "wuyu"

    const-string v1, "getMissCallCount"

    .line 611
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "new"

    .line 617
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = 1 AND "

    .line 618
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(%s = ? OR %s = ?)"

    const/4 v4, 0x2

    .line 619
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "type"

    const/4 v8, 0x0

    aput-object v5, v4, v8

    const-string v5, "type"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 620
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3ea

    .line 621
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.READ_CALL_LOG"

    .line 625
    invoke-static {p0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    return v8

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 630
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 631
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    const-string v0, "wuyu"

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMissCallCount  missCallCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mMissview:Lcom/wy/f1home/Keyguard/MissView;

    invoke-virtual {v0, v8}, Lcom/wy/f1home/Keyguard/MissView;->setMissCall(I)V

    return v8
.end method

.method private getMissMmsCount()I
    .locals 8

    const-string v0, "wuyu"

    const-string v1, "getMissMmsCount"

    .line 529
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.permission.READ_SMS"

    .line 534
    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 537
    :cond_0
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v1, "content://sms"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "(read=0 and type=1)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 538
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://mms"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "(read=0)"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 543
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 544
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    .line 547
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 548
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v1, "wuyu"

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMissMmsCount  missSmsCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v1, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mMissview:Lcom/wy/f1home/Keyguard/MissView;

    invoke-virtual {v1, v0}, Lcom/wy/f1home/Keyguard/MissView;->setmMissMms(I)V

    return v0

    :catch_0
    return v0
.end method

.method private setMissCall()V
    .locals 4

    .line 641
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "number"

    const-string v2, "13480951413"

    .line 642
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date"

    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "duration"

    const/16 v2, 0x5a

    .line 644
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "type"

    const/16 v2, 0x3ea

    .line 645
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "new"

    const/4 v2, 0x1

    .line 646
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method

.method private setVoiceMail()V
    .locals 3

    .line 652
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "type"

    const/4 v2, 0x4

    .line 653
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "new"

    const/4 v2, 0x1

    .line 654
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 655
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public BitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    .line 387
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public OnUpdateLegacyVoiceMailListen(I)V
    .locals 0

    return-void
.end method

.method public SendNoSimNotify()V
    .locals 4

    .line 121
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_setup_complete"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "wuyu"

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardActivity USER_SETUP_COMPLETE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 125
    invoke-static {p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->getImsiNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-static {p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->getImsiNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "311480"

    .line 127
    nop

    return-void

    .line 129
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080095

    invoke-static {p0, v0, v1}, Lcom/wy/f1home/uitl/PackageInfoUtil;->noSimSkipGotoHome_SendNoSimNotify(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public checkSimPcoToActivation()V
    .locals 0

    .line 141
    invoke-static {p0}, Lcom/wy/f1home/Receiver/BootReceiver;->startNotification(Landroid/content/Context;)V

    return-void
.end method

.method protected enableWallpaperShowing(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 343
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    .line 344
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "wuyu"

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wallpaperDrawable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p1}, Lcom/wy/f1home/activity/KeyguardActivity;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->BitmapToDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 0

    .line 894
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 896
    invoke-static {p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->activity_ani(Landroid/content/Context;)V

    return-void
.end method

.method public getCarrierText()V
    .locals 3

    const-string v0, "phone"

    .line 942
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 943
    iget-object v1, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x140

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 944
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->updateCarrierText()V

    return-void
.end method

.method public getKeyNumber(I)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "#"

    goto :goto_0

    :pswitch_1
    const-string v0, "*"

    goto :goto_0

    :pswitch_2
    const-string v0, "9"

    goto :goto_0

    :pswitch_3
    const-string v0, "8"

    goto :goto_0

    :pswitch_4
    const-string v0, "7"

    goto :goto_0

    :pswitch_5
    const-string v0, "6"

    goto :goto_0

    :pswitch_6
    const-string v0, "5"

    goto :goto_0

    :pswitch_7
    const-string v0, "4"

    goto :goto_0

    :pswitch_8
    const-string v0, "3"

    goto :goto_0

    :pswitch_9
    const-string v0, "2"

    goto :goto_0

    :pswitch_a
    const-string v0, "1"

    goto :goto_0

    :pswitch_b
    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/wy/f1home/KeyShortcuts/ShortcutsBean;
    .locals 2

    .line 901
    sget-object v0, Lcom/wy/f1home/activity/KeyguardActivity;->mPreferenceName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/wy/f1home/activity/KeyguardActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 902
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 903
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, ":"

    .line 904
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 905
    new-instance p2, Lcom/wy/f1home/KeyShortcuts/ShortcutsBean;

    invoke-direct {p2}, Lcom/wy/f1home/KeyShortcuts/ShortcutsBean;-><init>()V

    .line 906
    aget-object v0, p1, v1

    invoke-virtual {p2, v0}, Lcom/wy/f1home/KeyShortcuts/ShortcutsBean;->setPkgName(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 907
    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Lcom/wy/f1home/KeyShortcuts/ShortcutsBean;->setClassName(Ljava/lang/String;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public goLauncher()V
    .locals 2

    .line 401
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 402
    const-class v1, Lcom/wy/f1home/activity/HomeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 403
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public initBatteryListener()V
    .locals 2

    const v0, 0x7f090030

    .line 192
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mCharging:Landroid/widget/TextView;

    .line 194
    new-instance v0, Lcom/wy/f1home/uitl/BatteryListener;

    invoke-direct {v0, p0}, Lcom/wy/f1home/uitl/BatteryListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->listener:Lcom/wy/f1home/uitl/BatteryListener;

    .line 196
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->listener:Lcom/wy/f1home/uitl/BatteryListener;

    new-instance v1, Lcom/wy/f1home/activity/KeyguardActivity$2;

    invoke-direct {v1, p0}, Lcom/wy/f1home/activity/KeyguardActivity$2;-><init>(Lcom/wy/f1home/activity/KeyguardActivity;)V

    invoke-virtual {v0, v1}, Lcom/wy/f1home/uitl/BatteryListener;->register(Lcom/wy/f1home/uitl/BatteryListener$BatteryStateListener;)V

    return-void
.end method

.method public initButtonBar()V
    .locals 4

    const v0, 0x7f090024

    .line 333
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wy/f1home/Keyguard/ButtomBarView;

    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    .line 334
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarLeft(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f002f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarCenter(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mButtomBarView:Lcom/wy/f1home/Keyguard/ButtomBarView;

    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0031

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setButtomBarRight(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-void
.end method

.method public initContentObserver()V
    .locals 4

    const v0, 0x7f090087

    .line 428
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wy/f1home/Keyguard/MissView;

    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mMissview:Lcom/wy/f1home/Keyguard/MissView;

    .line 430
    new-instance v0, Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;

    iget-object v1, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p0, v1}, Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;-><init>(Lcom/wy/f1home/activity/KeyguardActivity;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->smsContentObserver:Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;

    .line 431
    new-instance v0, Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;

    iget-object v1, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p0, v1}, Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;-><init>(Lcom/wy/f1home/activity/KeyguardActivity;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->callContentObserver:Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;

    iget-object v1, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mHandler:Landroid/os/Handler;

    .line 434
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/wy/f1home/activity/KeyguardActivity;->callContentObserver:Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 435
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://mms-sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/wy/f1home/activity/KeyguardActivity;->smsContentObserver:Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 436
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 438
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mPermissionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 439
    :goto_0
    iget-object v1, p0, Lcom/wy/f1home/activity/KeyguardActivity;->permissions:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 440
    aget-object v1, v1, v0

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mPermissionList:Ljava/util/List;

    iget-object v2, p0, Lcom/wy/f1home/activity/KeyguardActivity;->permissions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mPermissionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "wuyu"

    const-string v1, "\u5df2\u7ecf\u6388\u6743"

    .line 446
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mPermissionList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x3

    .line 449
    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public initSimStateListener()V
    .locals 2

    const v0, 0x7f09002b

    .line 156
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mCarrierName:Landroid/widget/TextView;

    .line 158
    new-instance v0, Lcom/wy/f1home/uitl/SimListener;

    invoke-direct {v0, p0}, Lcom/wy/f1home/uitl/SimListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mSimListener:Lcom/wy/f1home/uitl/SimListener;

    .line 160
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mSimListener:Lcom/wy/f1home/uitl/SimListener;

    new-instance v1, Lcom/wy/f1home/activity/KeyguardActivity$1;

    invoke-direct {v1, p0}, Lcom/wy/f1home/activity/KeyguardActivity$1;-><init>(Lcom/wy/f1home/activity/KeyguardActivity;)V

    invoke-virtual {v0, v1}, Lcom/wy/f1home/uitl/SimListener;->register(Lcom/wy/f1home/uitl/SimListener$SimStateListener;)V

    .line 186
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getCarrierText()V

    return-void
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .line 996
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "wuyu"

    const-string v0, "KeyguardActivity onCreate "

    .line 95
    invoke-static {p1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {p0}, Lcom/wy/f1home/activity/activityUtil;->setStatusBarTransparentColor(Landroid/app/Activity;)V

    const p1, 0x7f0c001d

    .line 98
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->initContentObserver()V

    .line 102
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->initButtonBar()V

    .line 104
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->initSimStateListener()V

    .line 106
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->initBatteryListener()V

    .line 108
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->sendBroadcastToSetting()V

    .line 110
    invoke-static {p0}, Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver;->SetUpdateLegacyVoiceMailListen(Lcom/wy/f1home/Receiver/LegacyVoicemailNotificationReceiver$updateLegacyVoiceMailListen;)V

    .line 112
    invoke-static {p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->ishasSimCard(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0f005a

    .line 114
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f080083

    invoke-static {p0, p1, v0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->noSimSkipGotoHome_SendNoSimNotify(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->listener:Lcom/wy/f1home/uitl/BatteryListener;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/wy/f1home/uitl/BatteryListener;->unregister()V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mSimListener:Lcom/wy/f1home/uitl/SimListener;

    if-eqz v0, :cond_1

    .line 325
    invoke-virtual {v0}, Lcom/wy/f1home/uitl/SimListener;->unregister()V

    .line 327
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "wuyu"

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardActivity onKeyDown():keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  repetcount ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event.isLongPress() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 717
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 721
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 709
    :cond_1
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_2

    .line 710
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 812
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result p2

    const-string v0, "wuyu"

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyLongPress():keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_code_num"

    const-string v2, ""

    if-nez p2, :cond_1

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x10000000

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 846
    :pswitch_0
    invoke-direct {p0, p0}, Lcom/wy/f1home/activity/KeyguardActivity;->changeRingModel(Landroid/content/Context;)V

    return v1

    :pswitch_1
    :try_start_0
    const-string p1, "+"

    const-string p2, "wuyu"

    .line 854
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyLongPress data ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p2, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 856
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 857
    invoke-virtual {p0, p2}, Lcom/wy/f1home/activity/KeyguardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "wuyu"

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyLongPress() :sendBroadcast  Exception e = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v1

    .line 836
    :pswitch_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->getKeyNumber(I)Ljava/lang/String;

    move-result-object p1

    .line 837
    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p2, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "keyNumber"

    .line 838
    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 839
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 840
    invoke-virtual {p0, p2}, Lcom/wy/f1home/activity/KeyguardActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "wuyu"

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyLongPress() :sendBroadcast  Exception e = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1

    :pswitch_3
    return v1

    :cond_0
    return v1

    :cond_1
    :goto_2
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const-string v0, "wuyu"

    .line 726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardActivity onKeyUp():keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  repetcount ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " event.isLongPress() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x17

    const/4 v1, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2

    if-eq p1, v0, :cond_3

    const/16 v0, 0x5

    if-eq p1, v0, :cond_5
	
	
    const/16 v0, 0x4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string p1, "false"

    .line 787
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->set_in_launcher(Ljava/lang/String;)V

    .line 788
    sget-object p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_RIGHT_KEY:Ljava/lang/String;

    sget-object p2, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_RIGHT_VALUE:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/wy/f1home/activity/KeyguardActivity;->startShortCutActivity(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_1
    const-string p1, "false"

    .line 783
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->set_in_launcher(Ljava/lang/String;)V

    .line 784
    sget-object p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_LEFT_KEY:Ljava/lang/String;

    sget-object p2, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_LEFT_VALUE:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/wy/f1home/activity/KeyguardActivity;->startShortCutActivity(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_2
    const-string p1, "false"

    .line 779
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->set_in_launcher(Ljava/lang/String;)V

    .line 780
    sget-object p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_DOWN_KEY:Ljava/lang/String;

    sget-object p2, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_DOWN_VALUE:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/wy/f1home/activity/KeyguardActivity;->startShortCutActivity(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_3
    const-string p1, "false"

    .line 773
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->set_in_launcher(Ljava/lang/String;)V

    .line 774
    sget-object p1, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_UP_KEY:Ljava/lang/String;

    sget-object p2, Lcom/wy/f1home/KeyShortcuts/KeyShortcutsActivity;->SHORTCUT_UP_VALUE:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/wy/f1home/activity/KeyguardActivity;->startShortCutActivity(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_4
    :try_start_0
    const-string v0, "wuyu"

    .line 741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp() :event.isTracking() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " !event.isCanceled() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->getKeyNumber(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 745
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10200000

    .line 746
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 747
    invoke-virtual {p0, v2}, Lcom/wy/f1home/activity/KeyguardActivity;->startActivity(Landroid/content/Intent;)V

    .line 749
    invoke-static {p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->activity_ani(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "wuyu"

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyUp() :startActivity  Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/app/AppCompatActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    const-string p1, "false"

    .line 757
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->set_in_launcher(Ljava/lang/String;)V

    .line 758
    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.android.systemui"

    const-string v0, "com.lge.leap.notification.NotificationMainActivity"

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->startActivity_ext(Landroid/content/ComponentName;)Z

    return v1

    :cond_3
    const-string p1, "false"

    .line 767
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->set_in_launcher(Ljava/lang/String;)V

    .line 768
    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.android.mms"

    const-string v0, "com.android.mms.ui.ConversationList"

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->startActivity_ext(Landroid/content/ComponentName;)Z

    return v1

    :cond_4
    const-string p1, "false"

    .line 762
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->set_in_launcher(Ljava/lang/String;)V

    .line 763
    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.android.cts.wy.f1home"

    const-string v0, "com.wy.f1home.activity.HomeActivity"

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->startActivity_ext(Landroid/content/ComponentName;)Z

    return v1
	
	
    :cond_6
    const-string p1, "false"

    .line 762
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->set_in_launcher(Ljava/lang/String;)V

    .line 763
    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.android.cts.wy.f1home"

    const-string v0, "com.wy.f1home.KeyShortcuts.KeyShortcutsActivity"

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->startActivity_ext(Landroid/content/ComponentName;)Z

    return v1


    :cond_5
    const-string p1, "false"

    .line 767
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->set_in_launcher(Ljava/lang/String;)V

    .line 768
    new-instance p1, Landroid/content/ComponentName;

    const-string p2, "com.android.contacts"

    const-string v0, "com.android.contacts.LGCallLogsActivity"

    invoke-direct {p1, p2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0, p1}, Lcom/wy/f1home/activity/KeyguardActivity;->startActivity_ext(Landroid/content/ComponentName;)Z

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .line 983
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPause()V

    const-string v0, "wuyu"

    const-string v1, "KeyguardActivity onPause"

    .line 984
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p2, "wuyu"

    .line 660
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRequestPermissionsResult requestCode = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 669
    :pswitch_0
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->callContentObserver:Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;

    invoke-virtual {p1, p3, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 670
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "content://mms-sms/"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->smsContentObserver:Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;

    invoke-virtual {p1, p3, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 671
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {p1, p3, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 666
    :pswitch_1
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "content://mms-sms/"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->smsContentObserver:Lcom/wy/f1home/activity/KeyguardActivity$SMSContentObserver;

    invoke-virtual {p1, p3, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 663
    :pswitch_2
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->callContentObserver:Lcom/wy/f1home/activity/KeyguardActivity$CallContentObserver;

    invoke-virtual {p1, p3, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 3

    const-string v0, "wuyu"

    const-string v1, "KeyguardActivity onResume "

    .line 289
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    .line 293
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FloatSoftKeyDisplay"

    const-string v2, "false"

    .line 294
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FloatSoftKeyDisplay"

    const-string v2, "false"

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->enableWallpaperShowing(Z)V

    .line 297
    invoke-direct {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getMissCallCount()I

    .line 298
    invoke-direct {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getMissMmsCount()I

    .line 301
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->initButtonBar()V

    .line 303
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getCarrierText()V

    .line 305
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->updateBatteryChange()V

    .line 308
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_code_num"

    const-string v2, ""

    const-string v0, "true"

    return-void
.end method

.method protected onStop()V
    .locals 3

    const-string v0, "wuyu"

    const-string v1, "KeyguardActivity onStop"

    .line 989
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    const-string v0, "phone"

    .line 991
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 992
    iget-object v1, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public sendBroadcastToSetting()V
    .locals 3

    const-string v0, "wuyu"

    const-string v1, "KeyguardActivity sendBroadcastToSetting "

    .line 146
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.f1launcher.action.STATE"

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "f1launcher_started"

    const/4 v2, 0x1

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    .line 151
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public set_in_launcher(Ljava/lang/String;)V
    .locals 2

    .line 316
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "in_launcher"

    return-void
.end method

.method public startActivity_ext(Landroid/content/ComponentName;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 798
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 799
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 801
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 802
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->startActivity(Landroid/content/Intent;)V

    .line 804
    invoke-static {p0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->activity_ani(Landroid/content/Context;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public startShortCutActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 916
    invoke-virtual {p0, p1, p2}, Lcom/wy/f1home/activity/KeyguardActivity;->getShortcut(Ljava/lang/String;Ljava/lang/String;)Lcom/wy/f1home/KeyShortcuts/ShortcutsBean;

    move-result-object p1

    .line 917
    new-instance p2, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/wy/f1home/KeyShortcuts/ShortcutsBean;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/wy/f1home/KeyShortcuts/ShortcutsBean;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    invoke-virtual {p0, p2}, Lcom/wy/f1home/activity/KeyguardActivity;->startActivity_ext(Landroid/content/ComponentName;)Z

    return-void
.end method

.method updateBatteryChange()V
    .locals 10

    const-string v0, "batterymanager"

    .line 264
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    const/4 v1, 0x1

    .line 265
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    const/4 v3, 0x2

    .line 266
    invoke-virtual {v0, v3}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v3

    const/4 v4, 0x3

    .line 267
    invoke-virtual {v0, v4}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v4

    const/4 v5, 0x4

    .line 268
    invoke-virtual {v0, v5}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v5

    const/4 v6, 0x5

    .line 269
    invoke-virtual {v0, v6}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v6

    const/4 v7, 0x6

    .line 270
    invoke-virtual {v0, v7}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    const-string v7, "wuyu"

    .line 271
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "charge_counter = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wuyu"

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "now = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wuyu"

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "average = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wuyu"

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capacity = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wuyu"

    .line 275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "engrgy_counter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "wuyu"

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ne v5, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mCharging:Landroid/widget/TextView;

    const v1, 0x7f0f0038

    invoke-virtual {p0, v1}, Lcom/wy/f1home/activity/KeyguardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mCharging:Landroid/widget/TextView;

    const v2, 0x7f0f0039

    invoke-virtual {p0, v2}, Lcom/wy/f1home/activity/KeyguardActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public updateCarrierText()V
    .locals 9

    const-string v0, "phone"

    .line 949
    invoke-virtual {p0, v0}, Lcom/wy/f1home/activity/KeyguardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 951
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    const/16 v3, 0x8

    if-eqz v1, :cond_2

    .line 953
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 954
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 955
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v5

    .line 956
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "wuyu"

    .line 957
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KeyguardActivity updateCarrierText carrierName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "wuyu"

    .line 958
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KeyguardActivity updateCarrierText diaplsyName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wuyu"

    .line 959
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyguardActivity updateCarrierText getNetworkOperatorName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "wuyu"

    .line 960
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyguardActivity updateCarrierText getSimOperatorName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 961
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mCarrierName:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mCarrierName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 968
    :goto_0
    invoke-virtual {p0}, Lcom/wy/f1home/activity/KeyguardActivity;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mCarrierName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mCarrierName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 976
    :cond_2
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mCarrierName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 978
    :goto_1
    iget-object v0, p0, Lcom/wy/f1home/activity/KeyguardActivity;->mCarrierName:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method
