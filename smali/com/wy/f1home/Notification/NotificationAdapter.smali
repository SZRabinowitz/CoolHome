.class public Lcom/wy/f1home/Notification/NotificationAdapter;
.super Landroid/widget/BaseAdapter;
.source "NotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wy/f1home/Notification/NotificationAdapter$refreshButtomBarViewCallBack;,
        Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;
    }
.end annotation


# static fields
.field static mRefreshButtomBarViewCallBack:Lcom/wy/f1home/Notification/NotificationAdapter$refreshButtomBarViewCallBack;


# instance fields
.field private mCallback:Lcom/wy/f1home/uitl/HomeMonitorCallbacks;

.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wy/f1home/Notification/NotificationItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEmpty:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field mNotificationList:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Lcom/wy/f1home/Notification/NotificationAdapter$1;

    invoke-direct {v0, p0}, Lcom/wy/f1home/Notification/NotificationAdapter$1;-><init>(Lcom/wy/f1home/Notification/NotificationAdapter;)V

    iput-object v0, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mCallback:Lcom/wy/f1home/uitl/HomeMonitorCallbacks;

    const-string v0, "wuyu"

    const-string v1, "NotificationAdapter"

    .line 70
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mCallback:Lcom/wy/f1home/uitl/HomeMonitorCallbacks;

    invoke-static {v0}, Lcom/wy/f1home/Notification/NLService;->addCallbacks(Lcom/wy/f1home/uitl/HomeMonitorCallbacks;)V

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 73
    invoke-static {}, Lcom/wy/f1home/Notification/NLService;->getmNotificationItemInfoList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mDatas:Ljava/util/List;

    .line 74
    iput-object p1, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mEmpty:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/wy/f1home/Notification/NotificationAdapter;)Ljava/util/List;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mDatas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$002(Lcom/wy/f1home/Notification/NotificationAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mDatas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wy/f1home/Notification/NotificationAdapter;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mEmpty:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/wy/f1home/Notification/NotificationAdapter;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static setrefreshButtomBarViewCallBack(Lcom/wy/f1home/Notification/NotificationAdapter$refreshButtomBarViewCallBack;)V
    .locals 0

    .line 149
    sput-object p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mRefreshButtomBarViewCallBack:Lcom/wy/f1home/Notification/NotificationAdapter$refreshButtomBarViewCallBack;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const-string v0, "wuyu"

    const-string v1, "NotificationAdapter getView"

    .line 96
    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;

    invoke-direct {v0, p0}, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;-><init>(Lcom/wy/f1home/Notification/NotificationAdapter;)V

    if-nez p2, :cond_0

    .line 101
    iget-object p2, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0036

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f09006f

    .line 104
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, v0, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;->mIcon:Landroid/widget/ImageView;

    const p3, 0x7f0900df

    .line 105
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;->mText_Title:Landroid/widget/TextView;

    const p3, 0x7f0900de

    .line 106
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;->mText_time:Landroid/widget/TextView;

    const p3, 0x7f0900dd

    .line 107
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;->mText_text:Landroid/widget/TextView;

    const p3, 0x7f0900da

    .line 108
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, v0, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;->mText_count:Landroid/widget/TextView;

    .line 110
    iget-object p3, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wy/f1home/Notification/NotificationItemInfo;

    invoke-virtual {p3}, Lcom/wy/f1home/Notification/NotificationItemInfo;->getmText_Title()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/wy/f1home/Notification/NotificationItemInfo;

    invoke-virtual {p3}, Lcom/wy/f1home/Notification/NotificationItemInfo;->getmText_Title()Ljava/lang/String;

    move-result-object p3

    const-string v1, "USB"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 112
    iget-object p3, v0, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object p3, v0, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;->mIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wy/f1home/Notification/NotificationItemInfo;

    invoke-virtual {v1}, Lcom/wy/f1home/Notification/NotificationItemInfo;->getmIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_0
    iget-object p3, v0, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;->mText_Title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wy/f1home/Notification/NotificationItemInfo;

    invoke-virtual {v1}, Lcom/wy/f1home/Notification/NotificationItemInfo;->getmText_Title()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object p3, v0, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;->mText_time:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wy/f1home/Notification/NotificationItemInfo;

    invoke-virtual {v1}, Lcom/wy/f1home/Notification/NotificationItemInfo;->getmText_time()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object p3, v0, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;->mText_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wy/f1home/Notification/NotificationItemInfo;

    invoke-virtual {v1}, Lcom/wy/f1home/Notification/NotificationItemInfo;->getmText_text()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object p3, v0, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;->mText_count:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wy/f1home/Notification/NotificationItemInfo;

    invoke-virtual {v0}, Lcom/wy/f1home/Notification/NotificationItemInfo;->getmText_count()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object p3, p0, Lcom/wy/f1home/Notification/NotificationAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
