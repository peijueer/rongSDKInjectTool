.class public final Lcom/ipaynow/plugin/utils/d;
.super Ljava/lang/Object;


# instance fields
.field public final ai:Landroid/graphics/Rect;

.field public aj:[I

.field public ak:[I

.field public al:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ipaynow/plugin/utils/d;->ai:Landroid/graphics/Rect;

    return-void
.end method

.method public static a([B)Lcom/ipaynow/plugin/utils/d;
    .locals 4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ipaynow/plugin/utils/d;

    invoke-direct {v0}, Lcom/ipaynow/plugin/utils/d;-><init>()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/ipaynow/plugin/utils/d;->aj:[I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/ipaynow/plugin/utils/d;->ak:[I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lcom/ipaynow/plugin/utils/d;->al:[I

    iget-object v2, v0, Lcom/ipaynow/plugin/utils/d;->aj:[I

    array-length v2, v2

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/d;->b(I)V

    iget-object v2, v0, Lcom/ipaynow/plugin/utils/d;->ak:[I

    array-length v2, v2

    invoke-static {v2}, Lcom/ipaynow/plugin/utils/d;->b(I)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    iget-object v2, v0, Lcom/ipaynow/plugin/utils/d;->ai:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v2, v0, Lcom/ipaynow/plugin/utils/d;->ai:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v2, v0, Lcom/ipaynow/plugin/utils/d;->ai:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, v0, Lcom/ipaynow/plugin/utils/d;->ai:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    iget-object v2, v0, Lcom/ipaynow/plugin/utils/d;->aj:[I

    invoke-static {v2, v1}, Lcom/ipaynow/plugin/utils/d;->a([ILjava/nio/ByteBuffer;)V

    iget-object v2, v0, Lcom/ipaynow/plugin/utils/d;->ak:[I

    invoke-static {v2, v1}, Lcom/ipaynow/plugin/utils/d;->a([ILjava/nio/ByteBuffer;)V

    iget-object v2, v0, Lcom/ipaynow/plugin/utils/d;->al:[I

    invoke-static {v2, v1}, Lcom/ipaynow/plugin/utils/d;->a([ILjava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private static a([ILjava/nio/ByteBuffer;)V
    .locals 3

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static b(I)V
    .locals 3

    if-eqz p0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid nine-patch: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
