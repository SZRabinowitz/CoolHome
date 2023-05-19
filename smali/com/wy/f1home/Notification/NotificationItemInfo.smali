.class public Lcom/wy/f1home/Notification/NotificationItemInfo;
.super Ljava/lang/Object;
.source "NotificationItemInfo.java"


# instance fields
.field public RemoteViews:Landroid/widget/RemoteViews;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIsCleanAble:Z

.field public mKey:Ljava/lang/String;

.field public mPendingIntent:Landroid/app/PendingIntent;

.field public mText_Title:Ljava/lang/String;

.field public mText_count:Ljava/lang/String;

.field public mText_text:Ljava/lang/String;

.field public mText_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getmIsCleanAble()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mIsCleanAble:Z

    return v0
.end method

.method public getmKey()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getmPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getmText_Title()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mText_Title:Ljava/lang/String;

    return-object v0
.end method

.method public getmText_count()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mText_count:Ljava/lang/String;

    return-object v0
.end method

.method public getmText_text()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mText_text:Ljava/lang/String;

    return-object v0
.end method

.method public getmText_time()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mText_time:Ljava/lang/String;

    return-object v0
.end method

.method public setmIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setmIsCleanAble(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mIsCleanAble:Z

    return-void
.end method

.method public setmKey(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setmPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setmText_Title(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mText_Title:Ljava/lang/String;

    return-void
.end method

.method public setmText_count(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mText_count:Ljava/lang/String;

    return-void
.end method

.method public setmText_text(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mText_text:Ljava/lang/String;

    return-void
.end method

.method public setmText_time(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/wy/f1home/Notification/NotificationItemInfo;->mText_time:Ljava/lang/String;

    return-void
.end method
