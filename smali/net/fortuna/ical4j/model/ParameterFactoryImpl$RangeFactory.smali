.class Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RangeFactory;
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
    name = "RangeFactory"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/fortuna/ical4j/model/ParameterFactoryImpl$1;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/ParameterFactoryImpl$RangeFactory;-><init>()V

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
    .line 328
    new-instance v0, Lnet/fortuna/ical4j/model/parameter/Range;

    invoke-direct {v0, p2}, Lnet/fortuna/ical4j/model/parameter/Range;-><init>(Ljava/lang/String;)V

    .line 329
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Range;->THISANDFUTURE:Lnet/fortuna/ical4j/model/parameter/Range;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 330
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Range;->THISANDFUTURE:Lnet/fortuna/ical4j/model/parameter/Range;

    .line 335
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :cond_1
    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Range;->THISANDPRIOR:Lnet/fortuna/ical4j/model/parameter/Range;

    invoke-virtual {v1, v0}, Lnet/fortuna/ical4j/model/parameter/Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Range;->THISANDPRIOR:Lnet/fortuna/ical4j/model/parameter/Range;

    goto :goto_0
.end method
