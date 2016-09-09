.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RelTypeFactory;
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
    name = "RelTypeFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RelTypeFactory;-><init>()V

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
    .line 360
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/RelType;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/RelType;-><init>(Ljava/lang/String;)V

    .line 361
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/RelType;->PARENT:Lnet/fortuna/ical4j/model/parameter/RelType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/RelType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/RelType;->PARENT:Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 367
    :cond_0
    :goto_0
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/RelType;->SIBLING:Lnet/fortuna/ical4j/model/parameter/RelType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/RelType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/RelType;->SIBLING:Lnet/fortuna/ical4j/model/parameter/RelType;

    .line 370
    :cond_1
    return-object v0

    .line 364
    :cond_2
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/RelType;->CHILD:Lnet/fortuna/ical4j/model/parameter/RelType;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/RelType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/RelType;->CHILD:Lnet/fortuna/ical4j/model/parameter/RelType;

    goto :goto_0
.end method
