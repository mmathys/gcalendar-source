.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$FbTypeFactory;
.super Ljava/lang/Object;
.source "ParameterFactoryImpl.java"

# interfaces
.implements Lnet/fortuna/ical4j/model/ParameterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/fortuna/ical4j/model/ParameterFactoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FbTypeFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$FbTypeFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createParameter(Ljava/lang/String;Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/FbType;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/FbType;-><init>(Ljava/lang/String;)V

    .line 258
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/FbType;->FREE:Lnet/fortuna/ical4j/model/parameter/FbType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/FbType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 259
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->FREE:Lnet/fortuna/ical4j/model/parameter/FbType;

    .line 270
    :cond_0
    :goto_0
    return-object v0

    .line 261
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY:Lnet/fortuna/ical4j/model/parameter/FbType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/FbType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY:Lnet/fortuna/ical4j/model/parameter/FbType;

    goto :goto_0

    .line 264
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY_TENTATIVE:Lnet/fortuna/ical4j/model/parameter/FbType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/FbType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY_TENTATIVE:Lnet/fortuna/ical4j/model/parameter/FbType;

    goto :goto_0

    .line 267
    :cond_3
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY_UNAVAILABLE:Lnet/fortuna/ical4j/model/parameter/FbType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/FbType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/FbType;->BUSY_UNAVAILABLE:Lnet/fortuna/ical4j/model/parameter/FbType;

    goto :goto_0
.end method
