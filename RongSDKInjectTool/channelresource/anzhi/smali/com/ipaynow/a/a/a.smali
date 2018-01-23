.class public final enum Lcom/ipaynow/a/a/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/ipaynow/a/a/a;

.field public static final enum b:Lcom/ipaynow/a/a/a;

.field public static final enum c:Lcom/ipaynow/a/a/a;

.field public static final enum d:Lcom/ipaynow/a/a/a;

.field public static final enum e:Lcom/ipaynow/a/a/a;

.field public static final enum f:Lcom/ipaynow/a/a/a;

.field private static final synthetic g:[Lcom/ipaynow/a/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/ipaynow/a/a/a;

    const-string v1, "Verbose"

    invoke-direct {v0, v1, v3}, Lcom/ipaynow/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/a/a/a;->a:Lcom/ipaynow/a/a/a;

    new-instance v0, Lcom/ipaynow/a/a/a;

    const-string v1, "Debug"

    invoke-direct {v0, v1, v4}, Lcom/ipaynow/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/a/a/a;->b:Lcom/ipaynow/a/a/a;

    new-instance v0, Lcom/ipaynow/a/a/a;

    const-string v1, "Info"

    invoke-direct {v0, v1, v5}, Lcom/ipaynow/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/a/a/a;->c:Lcom/ipaynow/a/a/a;

    new-instance v0, Lcom/ipaynow/a/a/a;

    const-string v1, "Warn"

    invoke-direct {v0, v1, v6}, Lcom/ipaynow/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/a/a/a;->d:Lcom/ipaynow/a/a/a;

    new-instance v0, Lcom/ipaynow/a/a/a;

    const-string v1, "Error"

    invoke-direct {v0, v1, v7}, Lcom/ipaynow/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/a/a/a;->e:Lcom/ipaynow/a/a/a;

    new-instance v0, Lcom/ipaynow/a/a/a;

    const-string v1, "Wtf"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ipaynow/a/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ipaynow/a/a/a;->f:Lcom/ipaynow/a/a/a;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ipaynow/a/a/a;

    sget-object v1, Lcom/ipaynow/a/a/a;->a:Lcom/ipaynow/a/a/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ipaynow/a/a/a;->b:Lcom/ipaynow/a/a/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ipaynow/a/a/a;->c:Lcom/ipaynow/a/a/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ipaynow/a/a/a;->d:Lcom/ipaynow/a/a/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ipaynow/a/a/a;->e:Lcom/ipaynow/a/a/a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ipaynow/a/a/a;->f:Lcom/ipaynow/a/a/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ipaynow/a/a/a;->g:[Lcom/ipaynow/a/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ipaynow/a/a/a;
    .locals 1

    const-class v0, Lcom/ipaynow/a/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ipaynow/a/a/a;

    return-object v0
.end method

.method public static values()[Lcom/ipaynow/a/a/a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/ipaynow/a/a/a;->g:[Lcom/ipaynow/a/a/a;

    array-length v1, v0

    new-array v2, v1, [Lcom/ipaynow/a/a/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
