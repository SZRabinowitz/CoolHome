.class public Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;
.super Ljava/lang/Object;
.source "PopUpWindowUtil.java"


# static fields
.field private static mPopUpWindowUtilInstace:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;


# instance fields
.field private final MEUN_CLEAN_ALL:I

.field private dataList:Landroid/widget/ListView;

.field private datas:Ljava/util/ArrayList;

.field footView:Landroid/widget/RelativeLayout;

.field private mActivity:Landroid/app/Activity;

.field private window:Lcom/wy/f1home/PopupWindow/CommonPopupWindow;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->MEUN_CLEAN_ALL:I

    .line 55
    iput-object p1, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Landroid/widget/ListView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->dataList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->dataList:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Landroid/app/Activity;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$200(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Ljava/util/ArrayList;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->datas:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;)Lcom/wy/f1home/PopupWindow/CommonPopupWindow;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->window:Lcom/wy/f1home/PopupWindow/CommonPopupWindow;

    return-object p0
.end method

.method public static getPopUpWindowUtilInstace(Landroid/app/Activity;)Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;
    .locals 1

    .line 45
    sget-object v0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->mPopUpWindowUtilInstace:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    invoke-direct {v0, p0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->mPopUpWindowUtilInstace:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    .line 50
    :cond_0
    sget-object p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->mPopUpWindowUtilInstace:Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;

    return-object p0
.end method

.method private initData()V
    .locals 3

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->datas:Ljava/util/ArrayList;

    .line 67
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->datas:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initPopupWindow()V
    .locals 7

    .line 73
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 74
    iget-object v1, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 75
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 77
    new-instance v0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;

    iget-object v3, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0c004b

    const/4 v5, -0x1

    const/4 v6, -0x2

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil$1;-><init>(Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->window:Lcom/wy/f1home/PopupWindow/CommonPopupWindow;

    return-void
.end method

.method private showPopUpWindow(Landroid/view/View;)V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->window:Lcom/wy/f1home/PopupWindow/CommonPopupWindow;

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-virtual {v0, p1, v2, v1, v1}, Lcom/wy/f1home/PopupWindow/CommonPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 144
    iget-object p1, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v0, 0x3e99999a    # 0.3f

    .line 145
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 146
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 147
    iget-object v0, p0, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public createPopUpWindow(Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->initData()V

    .line 61
    invoke-direct {p0}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->initPopupWindow()V

    .line 62
    invoke-direct {p0, p1}, Lcom/wy/f1home/PopupWindow/PopUpWindowUtil;->showPopUpWindow(Landroid/view/View;)V

    return-void
.end method
