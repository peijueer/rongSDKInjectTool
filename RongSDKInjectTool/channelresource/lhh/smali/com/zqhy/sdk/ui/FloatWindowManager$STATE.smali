.class final enum Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;
.super Ljava/lang/Enum;
.source "FloatWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/ui/FloatWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVE:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

.field public static final enum DESTROY:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

.field public static final enum FULL_GRAY:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

.field public static final enum HALF:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

.field public static final enum HALF_GRAY:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

.field public static final enum MOVE:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

.field private static final synthetic a:[Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    new-instance v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v3}, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->ACTIVE:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    new-instance v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    const-string v1, "FULL_GRAY"

    invoke-direct {v0, v1, v4}, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->FULL_GRAY:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    new-instance v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    const-string v1, "HALF"

    invoke-direct {v0, v1, v5}, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->HALF:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    new-instance v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    const-string v1, "HALF_GRAY"

    invoke-direct {v0, v1, v6}, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->HALF_GRAY:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    new-instance v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    const-string v1, "DESTROY"

    invoke-direct {v0, v1, v7}, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->DESTROY:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    new-instance v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    const-string v1, "MOVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->MOVE:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    .line 100
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    sget-object v1, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->ACTIVE:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->FULL_GRAY:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->HALF:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->HALF_GRAY:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->DESTROY:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->MOVE:Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->a:[Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    return-object v0
.end method

.method public static values()[Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->a:[Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    invoke-virtual {v0}, [Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zqhy/sdk/ui/FloatWindowManager$STATE;

    return-object v0
.end method
