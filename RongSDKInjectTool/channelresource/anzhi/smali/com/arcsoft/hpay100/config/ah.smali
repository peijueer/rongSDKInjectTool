.class public Lcom/arcsoft/hpay100/config/ah;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/ah;->a:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/arcsoft/hpay100/config/ah;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/arcsoft/hpay100/config/ah;->c:I

    return-void
.end method
