.class public Lcom/alibaba/fastjson/serializer/ColorSerializer;
.super Ljava/lang/Object;
.source "ColorSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ColorSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/alibaba/fastjson/serializer/ColorSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ColorSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ColorSerializer;->instance:Lcom/alibaba/fastjson/serializer/ColorSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 6
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2c

    .line 13
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    .local v1, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    move-object v0, p2

    .line 14
    check-cast v0, Ljava/awt/Color;

    .line 15
    .local v0, "color":Ljava/awt/Color;
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 36
    :goto_0
    return-void

    .line 20
    :cond_0
    const/16 v2, 0x7b

    .line 21
    .local v2, "sep":C
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    .line 23
    sget-object v3, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 24
    const-class v3, Ljava/awt/Color;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 25
    const/16 v2, 0x2c

    .line 28
    :cond_1
    const-string v3, "r"

    invoke-virtual {v0}, Ljava/awt/Color;->getRed()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 29
    const-string v3, "g"

    invoke-virtual {v0}, Ljava/awt/Color;->getGreen()I

    move-result v4

    invoke-virtual {v1, v5, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 30
    const-string v3, "b"

    invoke-virtual {v0}, Ljava/awt/Color;->getBlue()I

    move-result v4

    invoke-virtual {v1, v5, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 31
    invoke-virtual {v0}, Ljava/awt/Color;->getAlpha()I

    move-result v3

    if-lez v3, :cond_2

    .line 32
    const-string v3, "alpha"

    invoke-virtual {v0}, Ljava/awt/Color;->getAlpha()I

    move-result v4

    invoke-virtual {v1, v5, v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;I)V

    .line 35
    :cond_2
    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(C)V

    goto :goto_0
.end method
