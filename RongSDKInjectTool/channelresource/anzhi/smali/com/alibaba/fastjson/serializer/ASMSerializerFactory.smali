.class public Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
.super Ljava/lang/Object;
.source "ASMSerializerFactory.java"

# interfaces
.implements Lcom/alibaba/fastjson/asm/Opcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    }
.end annotation


# instance fields
.field private classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

.field private final seed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/ASMClassLoader;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    .line 49
    return-void
.end method

.method private _apply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 6
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    const/4 v5, 0x2

    const/16 v3, 0x15

    const/16 v2, 0x19

    const/16 v4, 0xb8

    .line 1069
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 1071
    .local v0, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1072
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1073
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1075
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 1076
    const-string v1, "byte"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1077
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Z"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :goto_0
    return-void

    .line 1079
    :cond_0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 1080
    const-string v1, "short"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1081
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Z"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1083
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 1084
    const-string v1, "int"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1085
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Z"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1087
    :cond_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 1088
    const-string v1, "char"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1089
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Z"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1091
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 1092
    const/16 v1, 0x16

    const-string v2, "long"

    invoke-virtual {p3, v2, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1093
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Z"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1095
    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 1096
    const/16 v1, 0x17

    const-string v2, "float"

    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1097
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Z"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1099
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 1100
    const/16 v1, 0x18

    const-string v2, "double"

    invoke-virtual {p3, v2, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1101
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Z"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1103
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 1104
    const-string v1, "boolean"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1105
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Z"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1107
    :cond_7
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_8

    .line 1108
    const-string v1, "decimal"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1109
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1111
    :cond_8
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_9

    .line 1112
    const-string v1, "string"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1113
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1115
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1116
    const-string v1, "enum"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1117
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1119
    :cond_a
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1120
    const-string v1, "list"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1121
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1124
    :cond_b
    const-string v1, "object"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1125
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "apply"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _boolean(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x19

    const/16 v3, 0x15

    .line 615
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 617
    .local v0, "_end":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 618
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 619
    const/16 v1, 0x36

    const-string v2, "boolean"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 621
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 623
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 624
    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 625
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 626
    const-string v1, "boolean"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 628
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;Z)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 632
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 633
    return-void
.end method

.method private _byte(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x19

    const/16 v3, 0x15

    .line 648
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 650
    .local v0, "_end":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 651
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 652
    const/16 v1, 0x36

    const-string v2, "byte"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 654
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 656
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 657
    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 658
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 659
    const-string v1, "byte"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 661
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;I)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 665
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 666
    return-void
.end method

.method private _char(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x19

    const/16 v3, 0x15

    .line 594
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 596
    .local v0, "_end":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 597
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 598
    const/16 v1, 0x36

    const-string v2, "char"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 600
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 602
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 603
    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 604
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 605
    const-string v1, "char"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 607
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;C)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 611
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 612
    return-void
.end method

.method private _decimal(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 9
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v8, 0xa7

    const/16 v6, 0x19

    .line 711
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 713
    .local v1, "_end":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 714
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 715
    const/16 v4, 0x3a

    const-string v5, "decimal"

    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 717
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 719
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 720
    .local v3, "_if":Lcom/alibaba/fastjson/asm/Label;
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 721
    .local v0, "_else":Lcom/alibaba/fastjson/asm/Label;
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 723
    .local v2, "_end_if":Lcom/alibaba/fastjson/asm/Label;
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 726
    const-string v4, "decimal"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 727
    const/16 v4, 0xc7

    invoke-interface {p2, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 728
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 729
    invoke-interface {p2, v8, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 731
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 733
    const-string v4, "out"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 734
    const/16 v4, 0x15

    const-string v5, "seperator"

    invoke-virtual {p4, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 735
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 736
    const-string v4, "decimal"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v6, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 737
    const/16 v4, 0xb6

    const-class v5, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "writeFieldValue"

    const-string v7, "(CLjava/lang/String;Ljava/math/BigDecimal;)V"

    invoke-interface {p2, v4, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 741
    invoke-interface {p2, v8, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 743
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 745
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 746
    return-void
.end method

.method private _double(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x19

    const/4 v3, 0x2

    .line 574
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 576
    .local v0, "_end":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 577
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 578
    const/16 v1, 0x39

    const-string v2, "double"

    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 580
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 582
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 583
    const/16 v1, 0x15

    const-string v2, "seperator"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 584
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 585
    const/16 v1, 0x18

    const-string v2, "double"

    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 586
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;D)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 590
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 591
    return-void
.end method

.method private _enum(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 18
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v12, 0x0

    .line 486
    .local v12, "writeEnumUsingToString":Z
    const-class v13, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    check-cast v7, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 487
    .local v7, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v7, :cond_1

    .line 488
    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v8

    .local v8, "arr$":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v9, v8, v10

    .line 489
    .local v9, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    sget-object v13, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-ne v9, v13, :cond_0

    .line 490
    const/4 v12, 0x1

    .line 488
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 495
    .end local v8    # "arr$":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v9    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :cond_1
    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 496
    .local v6, "_not_null":Lcom/alibaba/fastjson/asm/Label;
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 497
    .local v5, "_end_if":Lcom/alibaba/fastjson/asm/Label;
    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 499
    .local v4, "_end":Lcom/alibaba/fastjson/asm/Label;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 500
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 501
    const/16 v13, 0xc0

    const-class v14, Ljava/lang/Enum;

    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 502
    const/16 v13, 0x3a

    const-string v14, "enum"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 506
    const/16 v13, 0x19

    const-string v14, "enum"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 507
    const/16 v13, 0xc7

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 508
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 509
    const/16 v13, 0xa7

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 511
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 512
    const/16 v13, 0x19

    const-string v14, "out"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 513
    const/16 v13, 0x15

    const-string v14, "seperator"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 514
    const/16 v13, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 515
    const/16 v13, 0x19

    const-string v14, "enum"

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 517
    if-eqz v12, :cond_2

    .line 518
    const/16 v13, 0xb6

    const-class v14, Ljava/lang/Object;

    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "toString"

    const-string v16, "()Ljava/lang/String;"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const/16 v13, 0xb6

    const-class v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "writeFieldValue"

    const-string v16, "(CLjava/lang/String;Ljava/lang/String;)V"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 528
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 530
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 531
    return-void

    .line 522
    :cond_2
    const/16 v13, 0xb6

    const-class v14, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v14}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "writeFieldValue"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "(CLjava/lang/String;L"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-class v17, Ljava/lang/Enum;

    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";)V"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private _filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 7
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p4, "_end"    # Lcom/alibaba/fastjson/asm/Label;

    .prologue
    const/16 v6, 0x19

    .line 972
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 973
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    const-string v1, "out"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 975
    const/16 v1, 0xb2

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SkipTransientField"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isEnabled"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const/16 v1, 0x9a

    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 985
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_apply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 986
    const/16 v1, 0x99

    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 988
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_processKey(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 990
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 991
    .local v0, "_else_processKey":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_processValue(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 993
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original()I

    move-result v1

    invoke-interface {p1, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 994
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue()I

    move-result v1

    invoke-interface {p1, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 995
    const/16 v1, 0xa5

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 996
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 997
    const/16 v1, 0xa7

    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 999
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1000
    return-void
.end method

.method private _float(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v3, 0x19

    .line 554
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 556
    .local v0, "_end":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 557
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 558
    const/16 v1, 0x38

    const-string v2, "float"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 560
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 562
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 563
    const/16 v1, 0x15

    const-string v2, "seperator"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 564
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 565
    const/16 v1, 0x17

    const-string v2, "float"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 566
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;F)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 570
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 571
    return-void
.end method

.method private _get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 5
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    const/16 v2, 0x19

    .line 636
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    .line 637
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 638
    const-string v1, "entity"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 639
    const/16 v1, 0xb6

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :goto_0
    return-void

    .line 641
    :cond_0
    const-string v1, "entity"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 642
    const/16 v1, 0xb4

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 25
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    .line 1260
    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v14

    .line 1262
    .local v14, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v7, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1263
    .local v7, "_if":Lcom/alibaba/fastjson/asm/Label;
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1264
    .local v5, "_else":Lcom/alibaba/fastjson/asm/Label;
    new-instance v8, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1265
    .local v8, "_write_null":Lcom/alibaba/fastjson/asm/Label;
    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1267
    .local v6, "_end_if":Lcom/alibaba/fastjson/asm/Label;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1270
    const/4 v15, 0x0

    .line 1271
    .local v15, "writeNull":Z
    const/16 v18, 0x0

    .line 1272
    .local v18, "writeNullNumberAsZero":Z
    const/16 v19, 0x0

    .line 1273
    .local v19, "writeNullStringAsEmpty":Z
    const/16 v16, 0x0

    .line 1274
    .local v16, "writeNullBooleanAsFalse":Z
    const/16 v17, 0x0

    .line 1275
    .local v17, "writeNullListAsEmpty":Z
    const-class v20, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1276
    .local v9, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v9, :cond_5

    .line 1277
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v10

    .local v10, "arr$":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    array-length v13, v10

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_5

    aget-object v11, v10, v12

    .line 1278
    .local v11, "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    if-ne v11, v0, :cond_1

    .line 1279
    const/4 v15, 0x1

    .line 1277
    :cond_0
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1280
    :cond_1
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    if-ne v11, v0, :cond_2

    .line 1281
    const/16 v18, 0x1

    goto :goto_1

    .line 1282
    :cond_2
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    if-ne v11, v0, :cond_3

    .line 1283
    const/16 v19, 0x1

    goto :goto_1

    .line 1284
    :cond_3
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    if-ne v11, v0, :cond_4

    .line 1285
    const/16 v16, 0x1

    goto :goto_1

    .line 1286
    :cond_4
    sget-object v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v20

    if-ne v11, v0, :cond_0

    .line 1287
    const/16 v17, 0x1

    goto :goto_1

    .line 1292
    .end local v10    # "arr$":[Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v11    # "feature":Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :cond_5
    if-nez v15, :cond_6

    .line 1293
    const/16 v20, 0x19

    const-string v21, "out"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1294
    const/16 v20, 0xb2

    const-class v21, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "WriteMapNullValue"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "L"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-class v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    const/16 v20, 0xb6

    const-class v21, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "isEnabled"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "(L"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-class v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ";"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ")Z"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    const/16 v20, 0x99

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1301
    :cond_6
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1303
    const/16 v20, 0x19

    const-string v21, "out"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1304
    const/16 v20, 0x15

    const-string v21, "seperator"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1305
    const/16 v20, 0x19

    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1307
    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    if-eq v14, v0, :cond_7

    const-class v20, Ljava/lang/Character;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_9

    .line 1308
    :cond_7
    if-eqz v19, :cond_8

    .line 1309
    const-string v20, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1310
    const/16 v20, 0xb6

    const-class v21, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "writeFieldValue"

    const-string v23, "(CLjava/lang/String;Ljava/lang/String;)V"

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1350
    const/16 v20, 0xa7

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1352
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1354
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1355
    return-void

    .line 1313
    :cond_8
    const/16 v20, 0xb6

    const-class v21, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "writeFieldNullString"

    const-string v23, "(CLjava/lang/String;)V"

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1316
    :cond_9
    const-class v20, Ljava/lang/Number;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1317
    if-eqz v18, :cond_a

    .line 1318
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1319
    const/16 v20, 0xb6

    const-class v21, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "writeFieldValue"

    const-string v23, "(CLjava/lang/String;I)V"

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1322
    :cond_a
    const/16 v20, 0xb6

    const-class v21, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "writeFieldNullNumber"

    const-string v23, "(CLjava/lang/String;)V"

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1325
    :cond_b
    const-class v20, Ljava/lang/Boolean;

    move-object/from16 v0, v20

    if-ne v14, v0, :cond_d

    .line 1326
    if-eqz v16, :cond_c

    .line 1327
    const/16 v20, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1328
    const/16 v20, 0xb6

    const-class v21, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "writeFieldValue"

    const-string v23, "(CLjava/lang/String;Z)V"

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1331
    :cond_c
    const/16 v20, 0xb6

    const-class v21, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "writeFieldNullBoolean"

    const-string v23, "(CLjava/lang/String;)V"

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1334
    :cond_d
    const-class v20, Ljava/util/Collection;

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v20

    if-nez v20, :cond_e

    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1335
    :cond_e
    if-eqz v17, :cond_f

    .line 1336
    const/16 v20, 0xb6

    const-class v21, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "writeFieldEmptyList"

    const-string v23, "(CLjava/lang/String;)V"

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1339
    :cond_f
    const/16 v20, 0xb6

    const-class v21, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "writeFieldNullList"

    const-string v23, "(CLjava/lang/String;)V"

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1343
    :cond_10
    const/16 v20, 0xb6

    const-class v21, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v21 .. v21}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v21

    const-string v22, "writeFieldNull"

    const-string v23, "(CLjava/lang/String;)V"

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private _int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x19

    const/16 v3, 0x15

    .line 690
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 692
    .local v0, "_end":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 693
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 694
    const/16 v1, 0x36

    const-string v2, "int"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 696
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 698
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 699
    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 700
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 701
    const-string v1, "int"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 703
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;I)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 707
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 708
    return-void
.end method

.method private _list(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 21
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 784
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p3 .. p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v16

    .line 787
    .local v16, "propertyType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 788
    const-class v15, Ljava/lang/Object;

    .line 793
    .end local v16    # "propertyType":Ljava/lang/reflect/Type;
    .local v15, "elementType":Ljava/lang/reflect/Type;
    :goto_0
    const/4 v14, 0x0

    .line 794
    .local v14, "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v0, v15, Ljava/lang/Class;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object v14, v15

    .line 795
    check-cast v14, Ljava/lang/Class;

    .line 798
    :cond_0
    new-instance v7, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 800
    .local v7, "_end":Lcom/alibaba/fastjson/asm/Label;
    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 801
    .local v12, "_if":Lcom/alibaba/fastjson/asm/Label;
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 802
    .local v5, "_else":Lcom/alibaba/fastjson/asm/Label;
    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 804
    .local v9, "_end_if":Lcom/alibaba/fastjson/asm/Label;
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 806
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 807
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 808
    const/16 v17, 0xc0

    const-class v18, Ljava/util/List;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 809
    const/16 v17, 0x3a

    const-string v18, "list"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 811
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 813
    const/16 v17, 0x19

    const-string v18, "list"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 814
    const/16 v17, 0xc7

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 815
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 816
    const/16 v17, 0xa7

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 818
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 820
    const/16 v17, 0x19

    const-string v18, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 821
    const/16 v17, 0x15

    const-string v18, "seperator"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 822
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "write"

    const-string v20, "(C)V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const/16 v17, 0x19

    const-string v18, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 825
    const/16 v17, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 826
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "writeFieldName"

    const-string v20, "(Ljava/lang/String;)V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const/16 v17, 0x19

    const-string v18, "list"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 830
    const/16 v17, 0xb9

    const-class v18, Ljava/util/List;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "size"

    const-string v20, "()I"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const/16 v17, 0x36

    const-string v18, "int"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 833
    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 834
    .local v13, "_if_3":Lcom/alibaba/fastjson/asm/Label;
    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 835
    .local v6, "_else_3":Lcom/alibaba/fastjson/asm/Label;
    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 837
    .local v10, "_end_if_3":Lcom/alibaba/fastjson/asm/Label;
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 839
    const/16 v17, 0x15

    const-string v18, "int"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 840
    const/16 v17, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 841
    const/16 v17, 0xa0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 843
    const/16 v17, 0x19

    const-string v18, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 844
    const-string v17, "[]"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 845
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "write"

    const-string v20, "(Ljava/lang/String;)V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const/16 v17, 0xa7

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 849
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 852
    const/16 v17, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 853
    const/16 v17, 0x19

    const-string v18, "list"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 854
    const/16 v17, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 855
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "setContext"

    const-string v20, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const/16 v17, 0x19

    const-string v18, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 861
    const/16 v17, 0x10

    const/16 v18, 0x5b

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 862
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "write"

    const-string v20, "(C)V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const/16 v17, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 866
    const/16 v17, 0xc0

    const-class v18, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 867
    const/16 v17, 0x3a

    const-string v18, "list_ser"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 869
    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 870
    .local v11, "_for":Lcom/alibaba/fastjson/asm/Label;
    new-instance v8, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 872
    .local v8, "_end_for":Lcom/alibaba/fastjson/asm/Label;
    const/16 v17, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 873
    const/16 v17, 0x36

    const-string v18, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 876
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 877
    const/16 v17, 0x15

    const-string v18, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 879
    const/16 v17, 0x15

    const-string v18, "int"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 880
    const/16 v17, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 881
    const/16 v17, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 883
    const/16 v17, 0xa2

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 885
    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_2

    .line 887
    const/16 v17, 0x19

    const-string v18, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 888
    const/16 v17, 0x19

    const-string v18, "list"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 889
    const/16 v17, 0x15

    const-string v18, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 890
    const/16 v17, 0xb9

    const-class v18, Ljava/util/List;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "get"

    const-string v20, "(I)Ljava/lang/Object;"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const/16 v17, 0xc0

    const-class v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 892
    const/16 v17, 0x10

    const/16 v18, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 893
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "writeString"

    const-string v20, "(Ljava/lang/String;C)V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :goto_1
    const-string v17, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v17

    const/16 v18, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIincInsn(II)V

    .line 918
    const/16 v17, 0xa7

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 920
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 922
    const-class v17, Ljava/lang/String;

    move-object/from16 v0, v17

    if-ne v15, v0, :cond_4

    .line 924
    const/16 v17, 0x19

    const-string v18, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 925
    const/16 v17, 0x19

    const-string v18, "list"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 926
    const/16 v17, 0x15

    const-string v18, "int"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 927
    const/16 v17, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 928
    const/16 v17, 0x64

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 929
    const/16 v17, 0xb9

    const-class v18, Ljava/util/List;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "get"

    const-string v20, "(I)Ljava/lang/Object;"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const/16 v17, 0xc0

    const-class v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 931
    const/16 v17, 0x10

    const/16 v18, 0x5d

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 932
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "writeString"

    const-string v20, "(Ljava/lang/String;C)V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    .end local v15    # "elementType":Ljava/lang/reflect/Type;
    :goto_2
    const/16 v17, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 959
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "popContext"

    const-string v20, "()V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 964
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 966
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 968
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 969
    return-void

    .line 790
    .end local v5    # "_else":Lcom/alibaba/fastjson/asm/Label;
    .end local v6    # "_else_3":Lcom/alibaba/fastjson/asm/Label;
    .end local v7    # "_end":Lcom/alibaba/fastjson/asm/Label;
    .end local v8    # "_end_for":Lcom/alibaba/fastjson/asm/Label;
    .end local v9    # "_end_if":Lcom/alibaba/fastjson/asm/Label;
    .end local v10    # "_end_if_3":Lcom/alibaba/fastjson/asm/Label;
    .end local v11    # "_for":Lcom/alibaba/fastjson/asm/Label;
    .end local v12    # "_if":Lcom/alibaba/fastjson/asm/Label;
    .end local v13    # "_if_3":Lcom/alibaba/fastjson/asm/Label;
    .end local v14    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "propertyType":Ljava/lang/reflect/Type;
    :cond_1
    check-cast v16, Ljava/lang/reflect/ParameterizedType;

    .end local v16    # "propertyType":Ljava/lang/reflect/Type;
    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v15, v17, v18

    .restart local v15    # "elementType":Ljava/lang/reflect/Type;
    goto/16 :goto_0

    .line 896
    .restart local v5    # "_else":Lcom/alibaba/fastjson/asm/Label;
    .restart local v6    # "_else_3":Lcom/alibaba/fastjson/asm/Label;
    .restart local v7    # "_end":Lcom/alibaba/fastjson/asm/Label;
    .restart local v8    # "_end_for":Lcom/alibaba/fastjson/asm/Label;
    .restart local v9    # "_end_if":Lcom/alibaba/fastjson/asm/Label;
    .restart local v10    # "_end_if_3":Lcom/alibaba/fastjson/asm/Label;
    .restart local v11    # "_for":Lcom/alibaba/fastjson/asm/Label;
    .restart local v12    # "_if":Lcom/alibaba/fastjson/asm/Label;
    .restart local v13    # "_if_3":Lcom/alibaba/fastjson/asm/Label;
    .restart local v14    # "elementClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/16 v17, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 897
    const/16 v17, 0x19

    const-string v18, "list"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 898
    const/16 v17, 0x15

    const-string v18, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 899
    const/16 v17, 0xb9

    const-class v18, Ljava/util/List;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "get"

    const-string v20, "(I)Ljava/lang/Object;"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    const/16 v17, 0x15

    const-string v18, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 901
    const/16 v17, 0xb8

    const-class v18, Ljava/lang/Integer;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "valueOf"

    const-string v20, "(I)Ljava/lang/Integer;"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/Class;->getModifiers()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v17

    if-eqz v17, :cond_3

    move-object/from16 v17, v15

    .line 904
    check-cast v17, Ljava/lang/Class;

    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 905
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "writeWithFieldName"

    const-string v20, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    :goto_3
    const/16 v17, 0x19

    const-string v18, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 913
    const/16 v17, 0x10

    const/16 v18, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 914
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "write"

    const-string v20, "(C)V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 908
    :cond_3
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "writeWithFieldName"

    const-string v20, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 935
    :cond_4
    const/16 v17, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 936
    const/16 v17, 0x19

    const-string v18, "list"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 937
    const/16 v17, 0x15

    const-string v18, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 938
    const/16 v17, 0xb9

    const-class v18, Ljava/util/List;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "get"

    const-string v20, "(I)Ljava/lang/Object;"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const/16 v17, 0x15

    const-string v18, "i"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 940
    const/16 v17, 0xb8

    const-class v18, Ljava/lang/Integer;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "valueOf"

    const-string v20, "(I)Ljava/lang/Integer;"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    if-eqz v14, :cond_5

    invoke-virtual {v14}, Ljava/lang/Class;->getModifiers()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 943
    check-cast v15, Ljava/lang/Class;

    .end local v15    # "elementType":Ljava/lang/reflect/Type;
    invoke-static {v15}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 944
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "writeWithFieldName"

    const-string v20, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :goto_4
    const/16 v17, 0x19

    const-string v18, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 952
    const/16 v17, 0x10

    const/16 v18, 0x5d

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 953
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "write"

    const-string v20, "(C)V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 947
    .restart local v15    # "elementType":Ljava/lang/reflect/Type;
    :cond_5
    const/16 v17, 0xb6

    const-class v18, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "writeWithFieldName"

    const-string v20, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private _long(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x19

    const/4 v3, 0x2

    .line 534
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 536
    .local v0, "_end":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 537
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 538
    const/16 v1, 0x37

    const-string v2, "long"

    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 540
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 542
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 543
    const/16 v1, 0x15

    const-string v2, "seperator"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 544
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 545
    const/16 v1, 0x16

    const-string v2, "long"

    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 546
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;J)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 550
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 551
    return-void
.end method

.method private _nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 4
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p4, "_end"    # Lcom/alibaba/fastjson/asm/Label;

    .prologue
    const/16 v1, 0x19

    .line 1003
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1004
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1005
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1006
    const/16 v0, 0xb8

    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applyName"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const/16 v0, 0x99

    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1009
    return-void
.end method

.method private _object(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 3
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 473
    .local v0, "_end":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 474
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 475
    const/16 v1, 0x3a

    const-string v2, "object"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 477
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 479
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 481
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 482
    return-void
.end method

.method private _processKey(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 6
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    const/4 v5, 0x2

    const/16 v3, 0x15

    const/16 v2, 0x19

    const/16 v4, 0xb8

    .line 1185
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 1187
    .local v0, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1188
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1189
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1191
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 1192
    const-string v1, "byte"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1193
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processKey"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;B)Ljava/lang/String;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    :goto_0
    const/16 v1, 0x3a

    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1257
    return-void

    .line 1195
    :cond_0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 1196
    const-string v1, "short"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1197
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processKey"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;S)Ljava/lang/String;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1199
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 1200
    const-string v1, "int"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1201
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processKey"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1203
    :cond_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 1204
    const-string v1, "char"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1205
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processKey"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;C)Ljava/lang/String;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1207
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 1208
    const/16 v1, 0x16

    const-string v2, "long"

    invoke-virtual {p3, v2, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1209
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processKey"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/String;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1211
    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 1212
    const/16 v1, 0x17

    const-string v2, "float"

    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1213
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processKey"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;F)Ljava/lang/String;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1215
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 1216
    const/16 v1, 0x18

    const-string v2, "double"

    invoke-virtual {p3, v2, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1217
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processKey"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;D)Ljava/lang/String;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1219
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 1220
    const-string v1, "boolean"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1221
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processKey"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/String;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1223
    :cond_7
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_8

    .line 1224
    const-string v1, "decimal"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1225
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processKey"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1229
    :cond_8
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_9

    .line 1230
    const-string v1, "string"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1231
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processKey"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1235
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1236
    const-string v1, "enum"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1237
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processKey"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1241
    :cond_a
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1243
    const-string v1, "list"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1244
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processKey"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1249
    :cond_b
    const-string v1, "object"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1250
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processKey"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _processValue(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 7
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    const/16 v6, 0x3a

    const/4 v3, 0x2

    const/16 v2, 0x15

    const/16 v5, 0xb8

    const/16 v4, 0x19

    .line 1131
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v0

    .line 1133
    .local v0, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1134
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1135
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1137
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 1138
    const-string v1, "byte"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1139
    const-class v1, Ljava/lang/Byte;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueOf"

    const-string v3, "(B)Ljava/lang/Byte;"

    invoke-interface {p1, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1173
    :goto_0
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original()I

    move-result v1

    invoke-interface {p1, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1174
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original()I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1176
    const-class v1, Lcom/alibaba/fastjson/serializer/FilterUtils;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processValue"

    const-string v3, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;"

    invoke-interface {p1, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue()I

    move-result v1

    invoke-interface {p1, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1182
    return-void

    .line 1140
    :cond_0
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_1

    .line 1141
    const-string v1, "short"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1142
    const-class v1, Ljava/lang/Short;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueOf"

    const-string v3, "(S)Ljava/lang/Short;"

    invoke-interface {p1, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1143
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2

    .line 1144
    const-string v1, "int"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1145
    const-class v1, Ljava/lang/Integer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueOf"

    const-string v3, "(I)Ljava/lang/Integer;"

    invoke-interface {p1, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1146
    :cond_2
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_3

    .line 1147
    const-string v1, "char"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1148
    const-class v1, Ljava/lang/Character;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueOf"

    const-string v3, "(C)Ljava/lang/Character;"

    invoke-interface {p1, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1149
    :cond_3
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4

    .line 1150
    const/16 v1, 0x16

    const-string v2, "long"

    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1151
    const-class v1, Ljava/lang/Long;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueOf"

    const-string v3, "(J)Ljava/lang/Long;"

    invoke-interface {p1, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1152
    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_5

    .line 1153
    const/16 v1, 0x17

    const-string v2, "float"

    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1154
    const-class v1, Ljava/lang/Float;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueOf"

    const-string v3, "(F)Ljava/lang/Float;"

    invoke-interface {p1, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1155
    :cond_5
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_6

    .line 1156
    const/16 v1, 0x18

    const-string v2, "double"

    invoke-virtual {p3, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1157
    const-class v1, Ljava/lang/Double;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueOf"

    const-string v3, "(D)Ljava/lang/Double;"

    invoke-interface {p1, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1158
    :cond_6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_7

    .line 1159
    const-string v1, "boolean"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1160
    const-class v1, Ljava/lang/Boolean;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueOf"

    const-string v3, "(Z)Ljava/lang/Boolean;"

    invoke-interface {p1, v5, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1161
    :cond_7
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_8

    .line 1162
    const-string v1, "decimal"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    .line 1163
    :cond_8
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_9

    .line 1164
    const-string v1, "string"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    .line 1165
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1166
    const-string v1, "enum"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    .line 1167
    :cond_a
    const-class v1, Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1168
    const-string v1, "list"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    .line 1170
    :cond_b
    const-string v1, "object"

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0
.end method

.method private _seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 2
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .prologue
    .line 1358
    const/16 v0, 0x10

    const/16 v1, 0x2c

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1359
    const/16 v0, 0x36

    const-string v1, "seperator"

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1360
    return-void
.end method

.method private _short(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v4, 0x19

    const/16 v3, 0x15

    .line 669
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 671
    .local v0, "_end":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 672
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 673
    const/16 v1, 0x36

    const-string v2, "short"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 675
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 677
    const-string v1, "out"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 678
    const-string v1, "seperator"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 679
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 680
    const-string v1, "short"

    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 682
    const/16 v1, 0xb6

    const-class v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "writeFieldValue"

    const-string v4, "(CLjava/lang/String;I)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 686
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 687
    return-void
.end method

.method private _string(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 7
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "property"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v5, 0x19

    .line 749
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 751
    .local v1, "_end":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 752
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    .line 753
    const/16 v3, 0x3a

    const-string v4, "string"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 755
    invoke-direct {p0, p2, p3, p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 757
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 758
    .local v0, "_else":Lcom/alibaba/fastjson/asm/Label;
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 761
    .local v2, "_end_if":Lcom/alibaba/fastjson/asm/Label;
    const-string v3, "string"

    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 762
    const/16 v3, 0xc7

    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 764
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 766
    const/16 v3, 0xa7

    invoke-interface {p2, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 768
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 769
    const-string v3, "out"

    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 770
    const/16 v3, 0x15

    const-string v4, "seperator"

    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 771
    invoke-virtual {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 772
    const-string v3, "string"

    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 773
    const/16 v3, 0xb6

    const-class v4, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "writeFieldValue"

    const-string v6, "(CLjava/lang/String;Ljava/lang/String;)V"

    invoke-interface {p2, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 778
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 780
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 781
    return-void
.end method

.method private _writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 8
    .param p1, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p2, "fieldInfo"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .param p4, "_end"    # Lcom/alibaba/fastjson/asm/Label;

    .prologue
    const/16 v7, 0xb6

    const/16 v6, 0x19

    .line 1012
    const/4 v2, 0x0

    .line 1013
    .local v2, "format":Ljava/lang/String;
    const-class v3, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1015
    .local v1, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v1, :cond_0

    .line 1016
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v2

    .line 1018
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 1019
    const/4 v2, 0x0

    .line 1023
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1025
    .local v0, "_not_null":Lcom/alibaba/fastjson/asm/Label;
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue()I

    move-result v3

    invoke-interface {p1, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1026
    const/16 v3, 0xc7

    invoke-interface {p1, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1027
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1028
    const/16 v3, 0xa7

    invoke-interface {p1, v3, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1030
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1032
    const-string v3, "out"

    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1033
    const/16 v3, 0x15

    const-string v4, "seperator"

    invoke-virtual {p3, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1034
    const-class v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "write"

    const-string v5, "(C)V"

    invoke-interface {p1, v7, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1037
    const-string v3, "out"

    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1038
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v3

    invoke-interface {p1, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1039
    const-class v3, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "writeFieldName"

    const-string v5, "(Ljava/lang/String;)V"

    invoke-interface {p1, v7, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v3

    invoke-interface {p1, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1043
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue()I

    move-result v3

    invoke-interface {p1, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1044
    if-eqz v2, :cond_1

    .line 1045
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1046
    const-class v3, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "writeWithFormat"

    const-string v5, "(Ljava/lang/Object;Ljava/lang/String;)V"

    invoke-interface {p1, v7, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1066
    return-void

    .line 1049
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v3

    invoke-interface {p1, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1050
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Class;

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1051
    const-class v3, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "writeWithFieldName"

    const-string v5, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    invoke-interface {p1, v7, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1056
    :cond_2
    const/4 v3, 0x0

    invoke-interface {p1, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1057
    const/16 v3, 0xb4

    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_asm_fieldType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Ljava/lang/reflect/Type;"

    invoke-interface {p1, v3, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-class v3, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "writeWithFieldName"

    const-string v5, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    invoke-interface {p1, v7, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 24
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p4, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "getters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 265
    .local v9, "end":Lcom/alibaba/fastjson/asm/Label;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v17

    .line 269
    .local v17, "size":I
    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 270
    .local v10, "endFormat_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v14, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 271
    .local v14, "notNull_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v19, 0x19

    const-string v20, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 272
    const/16 v19, 0xb2

    const-class v20, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "PrettyFormat"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "L"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-class v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/16 v19, 0xb6

    const-class v20, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "isEnabled"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "(L"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-class v23, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static/range {v23 .. v23}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ";"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")Z"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/16 v19, 0x99

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 278
    const/16 v19, 0x19

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 279
    const/16 v19, 0xb4

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "nature"

    const-class v22, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const/16 v19, 0xc7

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 282
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->initNature(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 285
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 287
    const/16 v19, 0x19

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 288
    const/16 v19, 0xb4

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "nature"

    const-class v22, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/16 v19, 0x19

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 290
    const/16 v19, 0x19

    const/16 v20, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 291
    const/16 v19, 0x19

    const/16 v20, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 292
    const/16 v19, 0x19

    const/16 v20, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 293
    const/16 v19, 0xb6

    const-class v20, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "write"

    const-string v22, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/16 v19, 0xb1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 297
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 303
    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 304
    .local v11, "endRef_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v14, Lcom/alibaba/fastjson/asm/Label;

    .end local v14    # "notNull_":Lcom/alibaba/fastjson/asm/Label;
    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 306
    .restart local v14    # "notNull_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v19, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 307
    const/16 v19, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 308
    const/16 v19, 0xb6

    const-class v20, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "containsReference"

    const-string v22, "(Ljava/lang/Object;)Z"

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/16 v19, 0x99

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 312
    const/16 v19, 0x19

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 313
    const/16 v19, 0xb4

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "nature"

    const-class v22, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const/16 v19, 0xc7

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 316
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->initNature(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 319
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 320
    const/16 v19, 0x19

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 321
    const/16 v19, 0xb4

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "nature"

    const-class v22, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static/range {v22 .. v22}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const/16 v19, 0x19

    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 323
    const/16 v19, 0x19

    const/16 v20, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 324
    const/16 v19, 0xb6

    const-class v20, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "writeReference"

    const-string v22, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const/16 v19, 0xb1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 329
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 333
    const/16 v19, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 334
    const/16 v19, 0xb6

    const-class v20, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "getContext"

    const-string v22, "()Lcom/alibaba/fastjson/serializer/SerialContext;"

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/16 v19, 0x3a

    const-string v20, "parent"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 338
    const/16 v19, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 339
    const/16 v19, 0x19

    const-string v20, "parent"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 340
    const/16 v19, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 341
    const/16 v19, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->paramFieldName()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 342
    const/16 v19, 0xb6

    const-class v20, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "setContext"

    const-string v22, "(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 349
    .local v12, "end_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v8, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 350
    .local v8, "else_":Lcom/alibaba/fastjson/asm/Label;
    new-instance v18, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 359
    .local v18, "writeClass_":Lcom/alibaba/fastjson/asm/Label;
    const/16 v19, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 360
    const/16 v19, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->paramFieldType()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 361
    const/16 v19, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 362
    const/16 v19, 0xb6

    const-class v20, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "isWriteClassName"

    const-string v22, "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z"

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const/16 v19, 0x99

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 370
    const/16 v19, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->paramFieldType()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 371
    const/16 v19, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 372
    const/16 v19, 0xb6

    const-class v20, Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "getClass"

    const-string v22, "()Ljava/lang/Class;"

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/16 v19, 0xa5

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 375
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 376
    const/16 v19, 0x19

    const-string v20, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 377
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "{\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\":\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 378
    const/16 v19, 0xb6

    const-class v20, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "write"

    const-string v22, "(Ljava/lang/String;)V"

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/16 v19, 0x10

    const/16 v20, 0x2c

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 380
    const/16 v19, 0xa7

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 382
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 383
    const/16 v19, 0x10

    const/16 v20, 0x7b

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 385
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 388
    const/16 v19, 0x36

    const-string v20, "seperator"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 390
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v17

    if-ge v13, v0, :cond_c

    .line 391
    move-object/from16 v0, p3

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 392
    .local v15, "property":Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-virtual {v15}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldClass()Ljava/lang/Class;

    move-result-object v16

    .line 394
    .local v16, "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 395
    const/16 v19, 0x3a

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 397
    sget-object v19, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_byte(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 390
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 399
    :cond_0
    sget-object v19, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 400
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_short(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 401
    :cond_1
    sget-object v19, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 402
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 403
    :cond_2
    sget-object v19, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_long(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 405
    :cond_3
    sget-object v19, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 406
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_float(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 407
    :cond_4
    sget-object v19, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 408
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_double(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 409
    :cond_5
    sget-object v19, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_boolean(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_1

    .line 411
    :cond_6
    sget-object v19, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    .line 412
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_char(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_1

    .line 413
    :cond_7
    const-class v19, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_string(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_1

    .line 415
    :cond_8
    const-class v19, Ljava/math/BigDecimal;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_decimal(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_1

    .line 417
    :cond_9
    const-class v19, Ljava/util/List;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 418
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_list(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_1

    .line 420
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->isEnum()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 421
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_enum(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_1

    .line 423
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_object(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_1

    .line 427
    .end local v15    # "property":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v16    # "propertyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    new-instance v7, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 428
    .local v7, "_if":Lcom/alibaba/fastjson/asm/Label;
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 429
    .local v5, "_else":Lcom/alibaba/fastjson/asm/Label;
    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 431
    .local v6, "_end_if":Lcom/alibaba/fastjson/asm/Label;
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 434
    const/16 v19, 0x15

    const-string v20, "seperator"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 435
    const/16 v19, 0x10

    const/16 v20, 0x7b

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    .line 436
    const/16 v19, 0xa0

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 438
    const/16 v19, 0x19

    const-string v20, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 439
    const-string v19, "{}"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 440
    const/16 v19, 0xb6

    const-class v20, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "write"

    const-string v22, "(Ljava/lang/String;)V"

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const/16 v19, 0xa7

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 444
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 446
    const/16 v19, 0x19

    const-string v20, "out"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 447
    const/16 v19, 0x10

    const/16 v20, 0x7d

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 448
    const/16 v19, 0xb6

    const-class v20, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "write"

    const-string v22, "(C)V"

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 451
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 453
    const/16 v19, 0x19

    invoke-virtual/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 454
    const/16 v19, 0x19

    const-string v20, "parent"

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 455
    const/16 v19, 0xb6

    const-class v20, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static/range {v20 .. v20}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "setContext"

    const-string v22, "(Lcom/alibaba/fastjson/serializer/SerialContext;)V"

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method private initNature(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .param p2, "mw"    # Lcom/alibaba/fastjson/asm/MethodVisitor;
    .param p3, "context"    # Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 462
    const/16 v0, 0xbb

    const-class v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 463
    const/16 v0, 0x59

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 464
    invoke-static {p1}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 465
    const/16 v0, 0xb7

    const-class v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<init>"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Ljava/lang/Class;

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const/16 v0, 0xb5

    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nature"

    const-class v3, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    return-void
.end method


# virtual methods
.method public createJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->createJavaBeanSerializer(Ljava/lang/Class;Ljava/util/Map;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public createJavaBeanSerializer(Ljava/lang/Class;Ljava/util/Map;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 119
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unsupportd class "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 122
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v21

    .line 124
    .local v21, "getters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->getGenClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "className":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/ClassWriter;-><init>()V

    .line 127
    .local v5, "cw":Lcom/alibaba/fastjson/asm/ClassWriter;
    const/16 v6, 0x31

    const/16 v7, 0x21

    const-string v9, "java/lang/Object"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com/alibaba/fastjson/serializer/ObjectSerializer"

    aput-object v12, v10, v11

    invoke-virtual/range {v5 .. v10}, Lcom/alibaba/fastjson/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 131
    const/4 v6, 0x2

    const-string v7, "nature"

    const-class v9, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v9}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;

    move-result-object v20

    .line 132
    .local v20, "fw":Lcom/alibaba/fastjson/asm/FieldVisitor;
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/asm/FieldVisitor;->visitEnd()V

    .line 135
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 137
    .local v19, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_asm_fieldPrefix"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Ljava/lang/reflect/Type;"

    invoke-virtual {v5, v6, v7, v9}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;

    move-result-object v20

    .line 139
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/asm/FieldVisitor;->visitEnd()V

    .line 142
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_asm_fieldType"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Ljava/lang/reflect/Type;"

    invoke-virtual {v5, v6, v7, v9}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitField(ILjava/lang/String;Ljava/lang/String;)Lcom/alibaba/fastjson/asm/FieldVisitor;

    move-result-object v20

    .line 144
    invoke-interface/range {v20 .. v20}, Lcom/alibaba/fastjson/asm/FieldVisitor;->visitEnd()V

    goto :goto_0

    .line 147
    .end local v19    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_1
    const/4 v10, 0x1

    const-string v11, "<init>"

    const-string v12, "()V"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v5

    invoke-virtual/range {v9 .. v14}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v25

    .line 148
    .local v25, "mw":Lcom/alibaba/fastjson/asm/MethodVisitor;
    const/16 v6, 0x19

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 149
    const/16 v6, 0xb7

    const-string v7, "java/lang/Object"

    const-string v9, "<init>"

    const-string v10, "()V"

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 154
    .restart local v19    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    const/16 v6, 0x19

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 156
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 158
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 159
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/fastjson/util/FieldInfo;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 160
    const/16 v6, 0xb8

    const-class v7, Lcom/alibaba/fastjson/util/ASMUtils;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "getMethodType"

    const-string v10, "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;"

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_2
    const/16 v6, 0xb5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/fastjson/util/FieldInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_asm_fieldType"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Ljava/lang/reflect/Type;"

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v8, v7, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 164
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcom/alibaba/fastjson/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 165
    const/16 v6, 0xb8

    const-class v7, Lcom/alibaba/fastjson/util/ASMUtils;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "getFieldType"

    const-string v10, "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;"

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 172
    .end local v19    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_3
    const/16 v6, 0xb1

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 173
    const/4 v6, 0x4

    const/4 v7, 0x4

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 174
    invoke-interface/range {v25 .. v25}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 177
    new-instance v17, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;-><init>(Ljava/lang/String;)V

    .line 179
    .local v17, "context":Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    const/4 v10, 0x1

    const-string v11, "write"

    const-string v12, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    const/4 v13, 0x0

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "java/io/IOException"

    aput-object v7, v14, v6

    move-object v9, v5

    invoke-virtual/range {v9 .. v14}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v25

    .line 184
    const/16 v6, 0x19

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v7

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 185
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "getWriter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/16 v6, 0x3a

    const-string v7, "out"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 189
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v24

    check-cast v24, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 191
    .local v24, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v24, :cond_4

    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONType;->alphabetic()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 192
    :cond_4
    new-instance v15, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v15}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 194
    .local v15, "_else":Lcom/alibaba/fastjson/asm/Label;
    const/16 v6, 0x19

    const-string v7, "out"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 195
    const/16 v6, 0xb2

    const-class v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "SortField"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "L"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "isEnabled"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(L"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")Z"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/16 v6, 0x99

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 201
    const/16 v6, 0x19

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 202
    const/16 v6, 0x19

    const/4 v7, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 203
    const/16 v6, 0x19

    const/4 v7, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 204
    const/16 v6, 0x19

    const/4 v7, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 205
    const/16 v6, 0x19

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->paramFieldType()I

    move-result v7

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 206
    const/16 v6, 0xb6

    const-string v7, "write1"

    const-string v9, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v8, v7, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/16 v6, 0xb1

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 210
    move-object/from16 v0, v25

    invoke-interface {v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 213
    .end local v15    # "_else":Lcom/alibaba/fastjson/asm/Label;
    :cond_5
    const/16 v6, 0x19

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v7

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 214
    const/16 v6, 0xc0

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 215
    const/16 v6, 0x3a

    const-string v7, "entity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v21

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 217
    const/16 v6, 0xb1

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 218
    const/4 v6, 0x5

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getVariantCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 219
    invoke-interface/range {v25 .. v25}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 222
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v6}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v26

    .line 226
    .local v26, "sortedGetters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v17, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    .end local v17    # "context":Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;-><init>(Ljava/lang/String;)V

    .line 228
    .restart local v17    # "context":Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    const/4 v10, 0x1

    const-string v11, "write1"

    const-string v12, "(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V"

    const/4 v13, 0x0

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "java/io/IOException"

    aput-object v7, v14, v6

    move-object v9, v5

    invoke-virtual/range {v9 .. v14}, Lcom/alibaba/fastjson/asm/ClassWriter;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/alibaba/fastjson/asm/MethodVisitor;

    move-result-object v25

    .line 233
    const/16 v6, 0x19

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->serializer()I

    move-result v7

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 234
    const/16 v6, 0xb6

    const-class v7, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-static {v7}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "getWriter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "()"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->getDesc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/16 v6, 0x3a

    const-string v7, "out"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 238
    const/16 v6, 0x19

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->obj()I

    move-result v7

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 239
    const/16 v6, 0xc0

    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/ASMUtils;->getType(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 240
    const/16 v6, 0x3a

    const-string v7, "entity"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 242
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Ljava/util/List;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 244
    const/16 v6, 0xb1

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 245
    const/4 v6, 0x5

    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getVariantCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 246
    invoke-interface/range {v25 .. v25}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 249
    invoke-virtual {v5}, Lcom/alibaba/fastjson/asm/ClassWriter;->toByteArray()[B

    move-result-object v16

    .line 255
    .local v16, "code":[B
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    const/4 v7, 0x0

    move-object/from16 v0, v16

    array-length v9, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v8, v0, v7, v9}, Lcom/alibaba/fastjson/util/ASMClassLoader;->defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v18

    .line 256
    .local v18, "exampleClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v23

    .line 258
    .local v23, "instance":Ljava/lang/Object;
    check-cast v23, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .end local v23    # "instance":Ljava/lang/Object;
    return-object v23
.end method

.method public getGenClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Serializer_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isExternalClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/ASMClassLoader;->isExternalClass(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
