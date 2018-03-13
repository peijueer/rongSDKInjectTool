.class public Lcom/zqhy/sdk/a;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://sdk-ns1.btgame01.com/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "http://sdk-ns2.btgame01.com/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "http://sdk-ns3.btgame01.com/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "http://sdk-ns4.btgame01.com/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "http://sdk-ns5.btgame01.com/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "http://sdk.btgame01.com/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zqhy/sdk/a;->a:[Ljava/lang/String;

    .line 16
    const-string v0, "index.php/Sdkv8/init"

    sput-object v0, Lcom/zqhy/sdk/a;->c:Ljava/lang/String;

    .line 18
    const-string v0, "index.php/Sdkv8/game_data"

    sput-object v0, Lcom/zqhy/sdk/a;->d:Ljava/lang/String;

    .line 20
    const-string v0, "index.php/Sdkv8/get_buoy_info"

    sput-object v0, Lcom/zqhy/sdk/a;->e:Ljava/lang/String;

    return-void
.end method
