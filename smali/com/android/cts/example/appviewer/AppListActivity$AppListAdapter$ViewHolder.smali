.class Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public iconImageView:Landroid/widget/ImageView;

.field public labelTextView:Landroid/widget/TextView;

.field textView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;


# direct methods
.method private constructor <init>(Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;->this$1:Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;Lcom/android/cts/example/appviewer/AppListActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;
    .param p2, "x1"    # Lcom/android/cts/example/appviewer/AppListActivity$1;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter$ViewHolder;-><init>(Lcom/android/cts/example/appviewer/AppListActivity$AppListAdapter;)V

    return-void
.end method
