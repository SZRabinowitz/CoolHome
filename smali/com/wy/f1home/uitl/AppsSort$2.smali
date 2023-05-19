.class synthetic Lcom/wy/f1home/uitl/AppsSort$2;
.super Ljava/lang/Object;
.source "AppsSort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/uitl/AppsSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$wy$f1home$uitl$AppsSort$SortType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    invoke-static {}, Lcom/wy/f1home/uitl/AppsSort$SortType;->values()[Lcom/wy/f1home/uitl/AppsSort$SortType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/wy/f1home/uitl/AppsSort$2;->$SwitchMap$com$wy$f1home$uitl$AppsSort$SortType:[I

    :try_start_0
    sget-object v0, Lcom/wy/f1home/uitl/AppsSort$2;->$SwitchMap$com$wy$f1home$uitl$AppsSort$SortType:[I

    sget-object v1, Lcom/wy/f1home/uitl/AppsSort$SortType;->NAME:Lcom/wy/f1home/uitl/AppsSort$SortType;

    invoke-virtual {v1}, Lcom/wy/f1home/uitl/AppsSort$SortType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/wy/f1home/uitl/AppsSort$2;->$SwitchMap$com$wy$f1home$uitl$AppsSort$SortType:[I

    sget-object v1, Lcom/wy/f1home/uitl/AppsSort$SortType;->POSITION:Lcom/wy/f1home/uitl/AppsSort$SortType;

    invoke-virtual {v1}, Lcom/wy/f1home/uitl/AppsSort$SortType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
