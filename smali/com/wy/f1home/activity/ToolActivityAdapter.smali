.class public Lcom/wy/f1home/activity/ToolActivityAdapter;
.super Landroid/widget/BaseAdapter;
.source "ToolActivityAdapter.java"


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
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
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

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Lcom/wy/f1home/activity/ToolActivityAdapter$1;

    invoke-direct {v0, p0}, Lcom/wy/f1home/activity/ToolActivityAdapter$1;-><init>(Lcom/wy/f1home/activity/ToolActivityAdapter;)V

    iput-object v0, p0, Lcom/wy/f1home/activity/ToolActivityAdapter;->mCallback:Lcom/wy/f1home/uitl/HomeMonitorCallbacks;

    .line 39
    invoke-static {}, Lcom/wy/f1home/HomeApplication;->getInstance()Lcom/wy/f1home/HomeApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/wy/f1home/activity/ToolActivityAdapter;->mCallback:Lcom/wy/f1home/uitl/HomeMonitorCallbacks;

    invoke-virtual {v0, v1}, Lcom/wy/f1home/HomeApplication;->setHomeCallback(Lcom/wy/f1home/uitl/HomeMonitorCallbacks;)Lcom/wy/f1home/uitl/PackageInfoUtil;

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/wy/f1home/activity/ToolActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/wy/f1home/activity/ToolActivityAdapter;->mDatas:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/wy/f1home/activity/ToolActivityAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/wy/f1home/activity/ToolActivityAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/wy/f1home/activity/ToolActivityAdapter;->mDatas:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/wy/f1home/activity/ToolActivityAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/wy/f1home/activity/ToolActivityAdapter;->mDatas:Ljava/util/List;

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

    if-nez p2, :cond_0

    .line 68
    iget-object p2, p0, Lcom/wy/f1home/activity/ToolActivityAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c0053

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f09006f

    .line 71
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f09006e

    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090071

    .line 73
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 75
    iget-object v2, p0, Lcom/wy/f1home/activity/ToolActivityAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wy/f1home/uitl/Bean;

    invoke-virtual {v2}, Lcom/wy/f1home/uitl/Bean;->getmName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/wy/f1home/activity/ToolActivityAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wy/f1home/uitl/Bean;

    invoke-virtual {v0}, Lcom/wy/f1home/uitl/Bean;->getmIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object p3, p0, Lcom/wy/f1home/activity/ToolActivityAdapter;->mDatas:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p2
.end method
