.class public Lcom/wy/f1home/activity/HomeActivityAdapter;
.super Landroid/widget/BaseAdapter;
.source "HomeActivityAdapter.java"


# instance fields
.field private mCallback:Lcom/wy/f1home/uitl/HomeMonitorCallbacks;

.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/wy/f1home/uitl/Bean;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/wy/f1home/uitl/Bean;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Lcom/wy/f1home/activity/HomeActivityAdapter$1;

    invoke-direct {v0, p0}, Lcom/wy/f1home/activity/HomeActivityAdapter$1;-><init>(Lcom/wy/f1home/activity/HomeActivityAdapter;)V

    iput-object v0, p0, Lcom/wy/f1home/activity/HomeActivityAdapter;->mCallback:Lcom/wy/f1home/uitl/HomeMonitorCallbacks;

    .line 43
    invoke-static {}, Lcom/wy/f1home/HomeApplication;->getInstance()Lcom/wy/f1home/HomeApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/wy/f1home/activity/HomeActivityAdapter;->mCallback:Lcom/wy/f1home/uitl/HomeMonitorCallbacks;

    invoke-virtual {v0, v1}, Lcom/wy/f1home/HomeApplication;->setHomeCallback(Lcom/wy/f1home/uitl/HomeMonitorCallbacks;)Lcom/wy/f1home/uitl/PackageInfoUtil;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/wy/f1home/activity/HomeActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 45
    iput-object p2, p0, Lcom/wy/f1home/activity/HomeActivityAdapter;->mDatas:Ljava/util/List;

    .line 46
    iget-object p1, p0, Lcom/wy/f1home/activity/HomeActivityAdapter;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/wy/f1home/activity/HomeActivityAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/wy/f1home/activity/HomeActivityAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/wy/f1home/activity/HomeActivityAdapter;->mDatas:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/wy/f1home/activity/HomeActivityAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/wy/f1home/activity/HomeActivityAdapter;->mDatas:Ljava/util/List;

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
    .locals 2

    if-nez p2, :cond_0

    .line 71
    iget-object p2, p0, Lcom/wy/f1home/activity/HomeActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0031

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f09006f

    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f090071

    .line 75
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lcom/wy/f1home/activity/HomeActivityAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wy/f1home/uitl/Bean;

    invoke-virtual {v1}, Lcom/wy/f1home/uitl/Bean;->getmName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/wy/f1home/activity/HomeActivityAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wy/f1home/uitl/Bean;

    invoke-virtual {v0}, Lcom/wy/f1home/uitl/Bean;->getmIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object p3, p0, Lcom/wy/f1home/activity/HomeActivityAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
