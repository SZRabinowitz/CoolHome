.class public Lcom/wy/f1home/Keyguard/ButtomBarView;
.super Landroid/widget/RelativeLayout;
.source "ButtomBarView.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mButtomBarCenter:Landroid/widget/TextView;

.field private mButtomBarLeft:Landroid/widget/TextView;

.field private mButtomBarRight:Landroid/widget/TextView;

.field private mComponentNameCenter:Landroid/content/ComponentName;

.field private mComponentNameLeft:Landroid/content/ComponentName;

.field private mComponentNameRight:Landroid/content/ComponentName;

.field public mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mStringCenter:Ljava/lang/String;

.field private mStringLeft:Ljava/lang/String;

.field private mStringRight:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/wy/f1home/Keyguard/ButtomBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/wy/f1home/Keyguard/ButtomBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/wy/f1home/Keyguard/ButtomBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 56
    sput-object p1, Lcom/wy/f1home/Keyguard/ButtomBarView;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0021

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    invoke-virtual {p0}, Lcom/wy/f1home/Keyguard/ButtomBarView;->initView()V

    return-void
.end method


# virtual methods
.method public getmStringCenter()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mStringCenter:Ljava/lang/String;

    return-object v0
.end method

.method public getmStringLeft()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mStringLeft:Ljava/lang/String;

    return-object v0
.end method

.method public getmStringRight()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mStringRight:Ljava/lang/String;

    return-object v0
.end method

.method public initView()V
    .locals 1

    const/4 v0, 0x1

    .line 64
    invoke-virtual {p0, v0}, Lcom/wy/f1home/Keyguard/ButtomBarView;->setFocusable(Z)V

    const v0, 0x7f090076

    .line 65
    invoke-virtual {p0, v0}, Lcom/wy/f1home/Keyguard/ButtomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mButtomBarLeft:Landroid/widget/TextView;

    const v0, 0x7f09002c

    .line 66
    invoke-virtual {p0, v0}, Lcom/wy/f1home/Keyguard/ButtomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mButtomBarCenter:Landroid/widget/TextView;

    const v0, 0x7f09009f

    .line 67
    invoke-virtual {p0, v0}, Lcom/wy/f1home/Keyguard/ButtomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mButtomBarRight:Landroid/widget/TextView;

    const v0, 0x7f090029

    .line 69
    invoke-virtual {p0, v0}, Lcom/wy/f1home/Keyguard/ButtomBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 75
    iget-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setButtomBarCenter(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    .line 97
    iget-object p1, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mButtomBarCenter:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mButtomBarCenter:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iput-object p1, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mComponentNameCenter:Landroid/content/ComponentName;

    .line 103
    iput-object p2, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mStringCenter:Ljava/lang/String;

    .line 104
    iget-object p1, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mButtomBarCenter:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setButtomBarLeft(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    .line 82
    iget-object p1, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mButtomBarLeft:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mButtomBarLeft:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iput-object p1, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mComponentNameLeft:Landroid/content/ComponentName;

    .line 88
    iput-object p2, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mStringLeft:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mButtomBarLeft:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setButtomBarRight(Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    .line 129
    iget-object p1, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mButtomBarRight:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mButtomBarRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iput-object p1, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mComponentNameRight:Landroid/content/ComponentName;

    .line 135
    iput-object p2, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mStringRight:Ljava/lang/String;

    .line 136
    iget-object p1, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mButtomBarRight:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public startActivityCenter()Z
    .locals 3

    const-string v0, "wuyu"

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mComponentNameCenter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mComponentNameCenter:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mComponentNameCenter:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 162
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 163
    iget-object v1, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mComponentNameCenter:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 164
    sget-object v1, Lcom/wy/f1home/Keyguard/ButtomBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 166
    sget-object v0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->activity_ani(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startActivityLeft()Z
    .locals 3

    const-string v0, "wuyu"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mComponentNameLeft = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mComponentNameLeft:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mComponentNameLeft:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 147
    iget-object v1, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mComponentNameLeft:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 148
    sget-object v1, Lcom/wy/f1home/Keyguard/ButtomBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 150
    sget-object v0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->activity_ani(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startActivityRight()Z
    .locals 3

    const-string v0, "wuyu"

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mComponentNameRight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mComponentNameRight:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/wy/f1home/uitl/LogUitl;->LogUitl_d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mComponentNameRight:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 177
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mComponentNameRight:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 180
    sget-object v1, Lcom/wy/f1home/Keyguard/ButtomBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 182
    sget-object v0, Lcom/wy/f1home/Keyguard/ButtomBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/wy/f1home/uitl/PackageInfoUtil;->activity_ani(Landroid/content/Context;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
