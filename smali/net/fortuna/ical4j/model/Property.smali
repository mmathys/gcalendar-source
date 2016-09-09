.class public abstract Lnet/fortuna/ical4j/model/Property;
.super Lnet/fortuna/ical4j/model/Content;
.source "Property.java"


# static fields
.field private static final serialVersionUID:J = 0x61d2511e8c75386fL


# instance fields
.field private final factory:Lnet/fortuna/ical4j/model/PropertyFactory;

.field private name:Ljava/lang/String;

.field private parameters:Lnet/fortuna/ical4j/model/ParameterList;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lnet/fortuna/ical4j/model/Content;-><init>()V

    .line 385
    iput-object p1, p0, Lnet/fortuna/ical4j/model/Property;->name:Ljava/lang/String;

    .line 386
    iput-object p2, p0, Lnet/fortuna/ical4j/model/Property;->parameters:Lnet/fortuna/ical4j/model/ParameterList;

    .line 387
    iput-object p3, p0, Lnet/fortuna/ical4j/model/Property;->factory:Lnet/fortuna/ical4j/model/PropertyFactory;

    .line 388
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lnet/fortuna/ical4j/model/ParameterList;

    invoke-direct {v0}, Lnet/fortuna/ical4j/model/ParameterList;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 368
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 502
    instance-of v0, p1, Lnet/fortuna/ical4j/model/Property;

    if-eqz v0, :cond_1

    .line 503
    check-cast p1, Lnet/fortuna/ical4j/model/Property;

    .line 504
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    new-instance v0, Lorg/apache/commons/lang/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    .line 506
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v1

    invoke-virtual {p1}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    .line 511
    :goto_0
    return v0

    .line 508
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 511
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Property;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;
    .locals 1

    .prologue
    .line 479
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/fortuna/ical4j/model/ParameterList;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    return-object v0
.end method

.method public final getParameters()Lnet/fortuna/ical4j/model/ParameterList;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lnet/fortuna/ical4j/model/Property;->parameters:Lnet/fortuna/ical4j/model/ParameterList;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 519
    new-instance v0, Lorg/apache/commons/lang/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 520
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 519
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    .line 520
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 519
    return v0
.end method

.method public isCalendarProperty()Z
    .locals 2

    .prologue
    .line 444
    const-string v0, "PRODID"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VERSION"

    .line 445
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CALSCALE"

    .line 446
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "METHOD"

    .line 447
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 444
    :goto_0
    return v0

    .line 447
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract setValue(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 412
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 413
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 417
    :cond_0
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 418
    const/4 v1, 0x0

    .line 419
    instance-of v0, p0, Lnet/fortuna/ical4j/model/property/XProperty;

    if-eqz v0, :cond_2

    .line 420
    const-string v0, "VALUE"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/Property;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/parameter/Value;

    .line 421
    if-eqz v0, :cond_1

    sget-object v4, Lnet/fortuna/ical4j/model/parameter/Value;->TEXT:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, v4}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    .line 427
    :goto_0
    if-eqz v0, :cond_3

    .line 428
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    :goto_1
    const-string v0, "\r\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 435
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 424
    :cond_2
    instance-of v0, p0, Lnet/fortuna/ical4j/model/Escapable;

    if-eqz v0, :cond_4

    move v0, v2

    .line 425
    goto :goto_0

    .line 431
    :cond_3
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/Property;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/fortuna/ical4j/util/Strings;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public abstract validate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation
.end method
