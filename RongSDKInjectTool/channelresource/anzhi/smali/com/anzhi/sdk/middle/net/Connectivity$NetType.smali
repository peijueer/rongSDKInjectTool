.class public final enum Lcom/anzhi/sdk/middle/net/Connectivity$NetType;
.super Ljava/lang/Enum;
.source "Connectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anzhi/sdk/middle/net/Connectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/anzhi/sdk/middle/net/Connectivity$NetType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CMWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

.field public static final enum CTWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

.field private static final synthetic ENUM$VALUES:[Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

.field public static final enum NET:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

.field public static final enum NONE:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

.field public static final enum OTHER:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

.field public static final enum UNIWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

.field public static final enum WIFI:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->NONE:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    new-instance v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4}, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->OTHER:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    new-instance v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    const-string v1, "CMWAP"

    invoke-direct {v0, v1, v5}, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->CMWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    new-instance v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    const-string v1, "CTWAP"

    invoke-direct {v0, v1, v6}, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->CTWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    new-instance v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    const-string v1, "UNIWAP"

    invoke-direct {v0, v1, v7}, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->UNIWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    new-instance v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    const-string v1, "NET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->NET:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    new-instance v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    const-string v1, "WIFI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->WIFI:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    .line 62
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    sget-object v1, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->NONE:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->OTHER:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->CMWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->CTWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->UNIWAP:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->NET:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->WIFI:Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->ENUM$VALUES:[Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/anzhi/sdk/middle/net/Connectivity$NetType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    return-object v0
.end method

.method public static values()[Lcom/anzhi/sdk/middle/net/Connectivity$NetType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/anzhi/sdk/middle/net/Connectivity$NetType;->ENUM$VALUES:[Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    array-length v1, v0

    new-array v2, v1, [Lcom/anzhi/sdk/middle/net/Connectivity$NetType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
