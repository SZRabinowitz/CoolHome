.class Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cts/example/appviewer/AppListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private iconSize:I

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/cts/example/appviewer/AppListActivity;


# direct methods
.method constructor <init>(Lcom/android/cts/example/appviewer/AppListActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    .line 114
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 115
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 116
    const/16 p1, 0x20

    invoke-direct {p0, p1}, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->dpToPx(I)I

    move-result p1

    iput p1, p0, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->iconSize:I

    .line 117
    return-void
.end method

.method private dpToPx(I)I
    .locals 2
    .param p1, "dp"    # I

    .line 184
    iget-object v0, p0, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    invoke-virtual {v0}, Lcom/android/cts/example/appviewer/AppListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 185
    .local v0, "density":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 122
    move-object v0, p2

    .line 124
    .local v0, "itemView":Landroid/view/View;
    const/high16 v1, -0x1000000

    .line 125
    .local v1, "backgroundColor":I
    const/16 v2, -0x100

    .line 127
    .local v2, "textColor":I
    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 128
    new-instance v4, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;-><init>(Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;Lcom/android/cts/example/appviewer/AppListActivity$1;)V

    .line 130
    .local v4, "holder":Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 134
    .local v5, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 135
    .local v6, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 137
    const/16 v8, 0x8

    invoke-virtual {v6, v8, v8, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 139
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v8, "iconImageView":Landroid/widget/ImageView;
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, p0, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->iconSize:I

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 142
    .local v9, "iconLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 144
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 145
    iput-object v8, v4, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;->iconImageView:Landroid/widget/ImageView;

    .line 147
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 148
    .local v10, "labelTextView":Landroid/widget/TextView;
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v11, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v7, v11

    .line 151
    .local v7, "labelLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 153
    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 154
    iput-object v10, v4, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;->labelTextView:Landroid/widget/TextView;

    .line 156
    move-object v0, v6

    .line 157
    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 158
    .end local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v6    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v7    # "labelLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "iconImageView":Landroid/widget/ImageView;
    .end local v9    # "iconLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v10    # "labelTextView":Landroid/widget/TextView;
    goto :goto_0

    .line 159
    .end local v4    # "holder":Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;

    .line 162
    .restart local v4    # "holder":Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 163
    .local v5, "app":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_2

    .line 164
    iget-object v6, p0, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    invoke-static {v6}, Lcom/android/cts/example/appviewer/AppListActivity;->access$300(Lcom/android/cts/example/appviewer/AppListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 165
    .local v6, "appIcon":Landroid/graphics/drawable/Drawable;
    iget v7, p0, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->iconSize:I

    invoke-virtual {v6, v3, v3, v7, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 166
    iget-object v3, v4, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    iget-object v3, v4, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;->labelTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    invoke-static {v7}, Lcom/android/cts/example/appviewer/AppListActivity;->access$300(Lcom/android/cts/example/appviewer/AppListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v3, v4, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;->labelTextView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;->this$0:Lcom/android/cts/example/appviewer/AppListActivity;

    invoke-static {v7}, Lcom/android/cts/example/appviewer/AppListActivity;->access$100(Lcom/android/cts/example/appviewer/AppListActivity;)I

    move-result v7

    if-ne p1, v7, :cond_1

    const v7, -0xffff01

    goto :goto_1

    :cond_1
    const/16 v7, -0x100

    :goto_1
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    .end local v6    # "appIcon":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v0
.end method
