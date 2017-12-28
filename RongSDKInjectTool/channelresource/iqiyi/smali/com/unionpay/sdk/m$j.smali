.class final Lcom/unionpay/sdk/m$j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/sdk/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/sdk/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "j"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:J

.field c:I

.field d:I

.field e:Ljava/util/List;

.field f:Ljava/util/List;

.field g:I

.field h:I

.field i:J


# direct methods
.method constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unionpay/sdk/m$j;->a:Ljava/lang/String;

    iput-wide v2, p0, Lcom/unionpay/sdk/m$j;->b:J

    iput v1, p0, Lcom/unionpay/sdk/m$j;->c:I

    iput v1, p0, Lcom/unionpay/sdk/m$j;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unionpay/sdk/m$j;->e:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unionpay/sdk/m$j;->f:Ljava/util/List;

    iput v1, p0, Lcom/unionpay/sdk/m$j;->g:I

    iput v1, p0, Lcom/unionpay/sdk/m$j;->h:I

    iput-wide v2, p0, Lcom/unionpay/sdk/m$j;->i:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 6

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/unionpay/sdk/p;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/unionpay/sdk/m$j;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/unionpay/sdk/p;->b(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/unionpay/sdk/m$j;->b:J

    invoke-static {v2, v3}, Lcom/unionpay/sdk/p;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/unionpay/sdk/m$j;->c:I

    invoke-static {v1}, Lcom/unionpay/sdk/p;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/unionpay/sdk/m$j;->d:I

    invoke-static {v1}, Lcom/unionpay/sdk/p;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/unionpay/sdk/m$j;->h:I

    invoke-static {v1}, Lcom/unionpay/sdk/p;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/unionpay/sdk/m$j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/unionpay/sdk/p;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/unionpay/sdk/m$j;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/sdk/m$a;

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/unionpay/sdk/p;->c(I)I

    move-result v3

    iget-object v4, v0, Lcom/unionpay/sdk/m$a;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/unionpay/sdk/p;->b(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    iget-wide v4, v0, Lcom/unionpay/sdk/m$a;->b:J

    invoke-static {v4, v5}, Lcom/unionpay/sdk/p;->b(J)I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lcom/unionpay/sdk/m$a;->c:I

    invoke-static {v4}, Lcom/unionpay/sdk/p;->c(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v0, v0, Lcom/unionpay/sdk/m$a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/unionpay/sdk/p;->b(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unionpay/sdk/m$j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/unionpay/sdk/p;->c(I)I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/unionpay/sdk/m$j;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/sdk/m$b;

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/unionpay/sdk/p;->c(I)I

    move-result v3

    iget-object v4, v0, Lcom/unionpay/sdk/m$b;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/unionpay/sdk/p;->b(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, v0, Lcom/unionpay/sdk/m$b;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/unionpay/sdk/p;->b(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    iget v0, v0, Lcom/unionpay/sdk/m$b;->c:I

    invoke-static {v0}, Lcom/unionpay/sdk/p;->c(I)I

    move-result v0

    add-int/2addr v0, v3

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lcom/unionpay/sdk/m$j;->i:J

    invoke-static {v2, v3}, Lcom/unionpay/sdk/p;->b(J)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public final messagePack(Lcom/unionpay/sdk/p;)V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->b(I)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$j;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Ljava/lang/String;)Lcom/unionpay/sdk/p;

    iget-wide v0, p0, Lcom/unionpay/sdk/m$j;->b:J

    invoke-virtual {p1, v0, v1}, Lcom/unionpay/sdk/p;->a(J)Lcom/unionpay/sdk/p;

    iget v0, p0, Lcom/unionpay/sdk/m$j;->c:I

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(I)Lcom/unionpay/sdk/p;

    iget v0, p0, Lcom/unionpay/sdk/m$j;->d:I

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(I)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->b(I)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$j;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/sdk/m$a;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Lcom/unionpay/sdk/o;)Lcom/unionpay/sdk/p;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unionpay/sdk/m$j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->b(I)Lcom/unionpay/sdk/p;

    iget-object v0, p0, Lcom/unionpay/sdk/m$j;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/sdk/m$b;

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(Lcom/unionpay/sdk/o;)Lcom/unionpay/sdk/p;

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/unionpay/sdk/m$j;->h:I

    invoke-virtual {p1, v0}, Lcom/unionpay/sdk/p;->a(I)Lcom/unionpay/sdk/p;

    iget-wide v0, p0, Lcom/unionpay/sdk/m$j;->i:J

    invoke-virtual {p1, v0, v1}, Lcom/unionpay/sdk/p;->a(J)Lcom/unionpay/sdk/p;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Session{id:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unionpay/sdk/m$j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/unionpay/sdk/m$j;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/sdk/m$j;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/sdk/m$j;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",connected:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/unionpay/sdk/m$j;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",time_gap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/unionpay/sdk/m$j;->i:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
