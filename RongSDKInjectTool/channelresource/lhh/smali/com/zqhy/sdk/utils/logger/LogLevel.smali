.class public final enum Lcom/zqhy/sdk/utils/logger/LogLevel;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/zqhy/sdk/utils/logger/LogLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FULL:Lcom/zqhy/sdk/utils/logger/LogLevel;

.field public static final enum NONE:Lcom/zqhy/sdk/utils/logger/LogLevel;

.field private static final synthetic a:[Lcom/zqhy/sdk/utils/logger/LogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/zqhy/sdk/utils/logger/LogLevel;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v2}, Lcom/zqhy/sdk/utils/logger/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zqhy/sdk/utils/logger/LogLevel;->FULL:Lcom/zqhy/sdk/utils/logger/LogLevel;

    .line 16
    new-instance v0, Lcom/zqhy/sdk/utils/logger/LogLevel;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/zqhy/sdk/utils/logger/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zqhy/sdk/utils/logger/LogLevel;->NONE:Lcom/zqhy/sdk/utils/logger/LogLevel;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/zqhy/sdk/utils/logger/LogLevel;

    sget-object v1, Lcom/zqhy/sdk/utils/logger/LogLevel;->FULL:Lcom/zqhy/sdk/utils/logger/LogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/zqhy/sdk/utils/logger/LogLevel;->NONE:Lcom/zqhy/sdk/utils/logger/LogLevel;

    aput-object v1, v0, v3

    sput-object v0, Lcom/zqhy/sdk/utils/logger/LogLevel;->a:[Lcom/zqhy/sdk/utils/logger/LogLevel;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zqhy/sdk/utils/logger/LogLevel;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/zqhy/sdk/utils/logger/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/zqhy/sdk/utils/logger/LogLevel;

    return-object v0
.end method

.method public static values()[Lcom/zqhy/sdk/utils/logger/LogLevel;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/zqhy/sdk/utils/logger/LogLevel;->a:[Lcom/zqhy/sdk/utils/logger/LogLevel;

    invoke-virtual {v0}, [Lcom/zqhy/sdk/utils/logger/LogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zqhy/sdk/utils/logger/LogLevel;

    return-object v0
.end method
