.class public Lcom/arcsoft/hpay100/utils/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x6

.field public static final i:I = 0x7

.field public static final j:I = 0x8

.field public static final k:I = 0x9

.field public static final l:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 11

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-nez v6, :cond_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_d

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x7

    goto :goto_0

    :cond_5
    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x8

    goto :goto_0

    :cond_6
    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v4

    goto :goto_0

    :cond_7
    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v0, v5

    goto :goto_0

    :cond_8
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x4

    goto :goto_0

    :cond_9
    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "#777"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto/16 :goto_0

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v7

    if-nez v7, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    array-length v8, v7

    move v0, v3

    :goto_1
    if-lt v0, v8, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    aget-object v9, v7, v0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v9, v10, :cond_1a

    aget-object v9, v7, v0

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->getType()I

    move-result v9

    if-nez v9, :cond_1a

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    move v0, v2

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v0, v3

    goto/16 :goto_0

    :cond_11
    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v2

    goto/16 :goto_0

    :cond_12
    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x7

    goto/16 :goto_0

    :cond_13
    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_14
    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v0, v4

    goto/16 :goto_0

    :cond_15
    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v0, v5

    goto/16 :goto_0

    :cond_16
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_17
    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "#777"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_19
    move v0, v2

    goto/16 :goto_0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/m;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/arcsoft/hpay100/utils/m;->a(Landroid/content/Context;)I

    move-result v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    if-eq v2, v1, :cond_0

    const/4 v3, 0x7

    if-eq v2, v3, :cond_0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method
