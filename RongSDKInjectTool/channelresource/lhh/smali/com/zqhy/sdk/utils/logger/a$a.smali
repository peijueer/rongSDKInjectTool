.class public Lcom/zqhy/sdk/utils/logger/a$a;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zqhy/sdk/utils/logger/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:Z

.field c:Lcom/zqhy/sdk/utils/logger/LogLevel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    const/4 v0, 0x2

    iput v0, p0, Lcom/zqhy/sdk/utils/logger/a$a;->a:I

    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zqhy/sdk/utils/logger/a$a;->b:Z

    .line 391
    sget-object v0, Lcom/zqhy/sdk/utils/logger/LogLevel;->NONE:Lcom/zqhy/sdk/utils/logger/LogLevel;

    iput-object v0, p0, Lcom/zqhy/sdk/utils/logger/a$a;->c:Lcom/zqhy/sdk/utils/logger/LogLevel;

    return-void
.end method


# virtual methods
.method public a()Lcom/zqhy/sdk/utils/logger/a$a;
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zqhy/sdk/utils/logger/a$a;->b:Z

    .line 395
    return-object p0
.end method

.method public a(I)Lcom/zqhy/sdk/utils/logger/a$a;
    .locals 0

    .prologue
    .line 399
    invoke-static {p1}, Lcom/zqhy/sdk/utils/logger/a;->a(I)V

    .line 400
    iput p1, p0, Lcom/zqhy/sdk/utils/logger/a$a;->a:I

    .line 401
    return-object p0
.end method

.method public a(Lcom/zqhy/sdk/utils/logger/LogLevel;)Lcom/zqhy/sdk/utils/logger/a$a;
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/zqhy/sdk/utils/logger/a$a;->c:Lcom/zqhy/sdk/utils/logger/LogLevel;

    .line 406
    return-object p0
.end method
