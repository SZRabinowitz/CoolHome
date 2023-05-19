.class public final enum Lcom/wy/f1home/uitl/AppsSort$SortType;
.super Ljava/lang/Enum;
.source "AppsSort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wy/f1home/uitl/AppsSort;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/wy/f1home/uitl/AppsSort$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/wy/f1home/uitl/AppsSort$SortType;

.field public static final enum NAME:Lcom/wy/f1home/uitl/AppsSort$SortType;

.field public static final enum POSITION:Lcom/wy/f1home/uitl/AppsSort$SortType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 9
    new-instance v0, Lcom/wy/f1home/uitl/AppsSort$SortType;

    const-string v1, "NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/wy/f1home/uitl/AppsSort$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wy/f1home/uitl/AppsSort$SortType;->NAME:Lcom/wy/f1home/uitl/AppsSort$SortType;

    new-instance v0, Lcom/wy/f1home/uitl/AppsSort$SortType;

    const-string v1, "POSITION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/wy/f1home/uitl/AppsSort$SortType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/wy/f1home/uitl/AppsSort$SortType;->POSITION:Lcom/wy/f1home/uitl/AppsSort$SortType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/wy/f1home/uitl/AppsSort$SortType;

    sget-object v1, Lcom/wy/f1home/uitl/AppsSort$SortType;->NAME:Lcom/wy/f1home/uitl/AppsSort$SortType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/wy/f1home/uitl/AppsSort$SortType;->POSITION:Lcom/wy/f1home/uitl/AppsSort$SortType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/wy/f1home/uitl/AppsSort$SortType;->$VALUES:[Lcom/wy/f1home/uitl/AppsSort$SortType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/wy/f1home/uitl/AppsSort$SortType;
    .locals 1

    .line 9
    const-class v0, Lcom/wy/f1home/uitl/AppsSort$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/wy/f1home/uitl/AppsSort$SortType;

    return-object p0
.end method

.method public static values()[Lcom/wy/f1home/uitl/AppsSort$SortType;
    .locals 1

    .line 9
    sget-object v0, Lcom/wy/f1home/uitl/AppsSort$SortType;->$VALUES:[Lcom/wy/f1home/uitl/AppsSort$SortType;

    invoke-virtual {v0}, [Lcom/wy/f1home/uitl/AppsSort$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/wy/f1home/uitl/AppsSort$SortType;

    return-object v0
.end method
