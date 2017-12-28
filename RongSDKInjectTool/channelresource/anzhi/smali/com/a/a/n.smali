.class final Lcom/a/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic bQ:Lcom/a/a/m;


# direct methods
.method constructor <init>(Lcom/a/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/n;->bQ:Lcom/a/a/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v0, p0, Lcom/a/a/n;->bQ:Lcom/a/a/m;

    invoke-static {v0}, Lcom/a/a/m;->a(Lcom/a/a/m;)F

    move-result v1

    const/high16 v2, 0x41f00000    # 30.0f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/a/a/m;->a(Lcom/a/a/m;F)V

    iget-object v1, p0, Lcom/a/a/n;->bQ:Lcom/a/a/m;

    iget-object v0, p0, Lcom/a/a/n;->bQ:Lcom/a/a/m;

    invoke-static {v0}, Lcom/a/a/m;->a(Lcom/a/a/m;)F

    move-result v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/a/a/n;->bQ:Lcom/a/a/m;

    invoke-static {v0}, Lcom/a/a/m;->a(Lcom/a/a/m;)F

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lcom/a/a/m;->a(Lcom/a/a/m;F)V

    iget-object v0, p0, Lcom/a/a/n;->bQ:Lcom/a/a/m;

    invoke-virtual {v0}, Lcom/a/a/m;->invalidate()V

    iget-object v0, p0, Lcom/a/a/n;->bQ:Lcom/a/a/m;

    invoke-static {v0}, Lcom/a/a/m;->b(Lcom/a/a/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/n;->bQ:Lcom/a/a/m;

    iget-object v1, p0, Lcom/a/a/n;->bQ:Lcom/a/a/m;

    invoke-static {v1}, Lcom/a/a/m;->c(Lcom/a/a/m;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Lcom/a/a/m;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/a/a/n;->bQ:Lcom/a/a/m;

    invoke-static {v0}, Lcom/a/a/m;->a(Lcom/a/a/m;)F

    move-result v0

    sub-float/2addr v0, v3

    goto :goto_0
.end method
