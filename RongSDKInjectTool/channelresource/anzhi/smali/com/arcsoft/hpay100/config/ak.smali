.class public Lcom/arcsoft/hpay100/config/ak;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/arcsoft/hpay100/config/ak;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/ak;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/arcsoft/hpay100/config/ak;->c:Ljava/lang/String;

    return-void
.end method
