.class public Lcom/iqiyi/sdk/platform/GamePlatformConstans;
.super Ljava/lang/Object;
.source "GamePlatformConstans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static SDKVERSION:Ljava/lang/String;

.field public static defaultCountry:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

.field public static googleBilling:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    sget-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;->China:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    sput-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->defaultCountry:Lcom/iqiyi/sdk/platform/GamePlatformConstans$Country;

    .line 11
    sput-boolean v1, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->googleBilling:Z

    .line 12
    sput-boolean v1, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->DEBUG:Z

    .line 13
    const-string v0, ""

    sput-object v0, Lcom/iqiyi/sdk/platform/GamePlatformConstans;->SDKVERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
