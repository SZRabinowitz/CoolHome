.class public Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;
.super Ljava/lang/Object;
.source "NotificationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/Notification/NotificationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemInfo"
.end annotation


# instance fields
.field public mIcon:Landroid/widget/ImageView;

.field public mText_Title:Landroid/widget/TextView;

.field public mText_count:Landroid/widget/TextView;

.field public mText_text:Landroid/widget/TextView;

.field public mText_time:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/wy/f1home/Notification/NotificationAdapter;


# direct methods
.method public constructor <init>(Lcom/wy/f1home/Notification/NotificationAdapter;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/wy/f1home/Notification/NotificationAdapter$ItemInfo;->this$0:Lcom/wy/f1home/Notification/NotificationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
