.class final Lcom/unionpay/sdk/m$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/sdk/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/unionpay/sdk/m$h;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:I

.field j:Ljava/lang/String;

.field k:I

.field l:Ljava/lang/String;

.field m:Z

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:J

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:I

.field w:I

.field x:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->b:Ljava/lang/String;

    new-instance v0, Lcom/unionpay/sdk/m$h;

    invoke-direct {v0}, Lcom/unionpay/sdk/m$h;-><init>()V

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->c:Lcom/unionpay/sdk/m$h;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->g:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->h:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Lcom/unionpay/sdk/m$e;->i:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->j:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/unionpay/sdk/m$e;->k:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->l:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/sdk/m$e;->m:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->q:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unionpay/sdk/m$e;->r:J

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->s:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->t:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$e;->x:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final messagePack(Lcom/unionpay/sdk/p;)V
    .locals 2

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->b(I)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->c:Lcom/unionpay/sdk/m$h;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Lcom/unionpay/sdk/o;)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget v0, p0, Lcom/unionpay/sdk/m$e;->i:I

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(I)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget v0, p0, Lcom/unionpay/sdk/m$e;->k:I

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(I)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget-boolean v0, p0, Lcom/unionpay/sdk/m$e;->m:Z

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Z)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$e;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget-wide v0, p0, Lcom/unionpay/sdk/m$e;->r:J

    invoke-virtual {p1, v0, v1}, Lcom/unionpay/sdk/p;->a(J)Lcom/unionpay/sdk/p;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/sdk/m$e;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/sdk/m$e;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/sdk/m$e;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/sdk/m$e;->v:I

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/p;->a(I)Lcom/unionpay/sdk/p;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/sdk/m$e;->w:I

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/p;->a(I)Lcom/unionpay/sdk/p;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/sdk/m$e;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    return-void
.end method
