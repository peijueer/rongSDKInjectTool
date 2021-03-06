.class Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;
.super Ljava/lang/Object;
.source "ASMDeserializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Context"
.end annotation


# instance fields
.field private final beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

.field private className:Ljava/lang/String;

.field private clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private fieldInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation
.end field

.field private variantIndex:I

.field private variants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/DeserializeBeanInfo;I)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "beanInfo"    # Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
    .param p4, "initVariantIndex"    # I

    .prologue
    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1051
    const/4 v0, 0x5

    iput v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    .line 1053
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    .line 1061
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;

    .line 1062
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getClazz()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->clazz:Ljava/lang/Class;

    .line 1063
    iput p4, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    .line 1064
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    .line 1065
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/DeserializeBeanInfo;->getFieldList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:Ljava/util/List;

    .line 1066
    return-void
.end method


# virtual methods
.method public getBeanInfo()Lcom/alibaba/fastjson/util/DeserializeBeanInfo;
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->beanInfo:Lcom/alibaba/fastjson/util/DeserializeBeanInfo;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getClazz()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method public getFieldInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->fieldInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getVariantCount()I
    .locals 1

    .prologue
    .line 1085
    iget v0, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    return v0
.end method

.method public var(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1099
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1100
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1101
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    iget v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1103
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "i":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 1104
    .restart local v0    # "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public var(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "increment"    # I

    .prologue
    .line 1089
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1090
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1091
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    iget v2, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    iget v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    add-int/2addr v1, p2

    iput v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variantIndex:I

    .line 1094
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory$Context;->variants:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "i":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 1095
    .restart local v0    # "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
