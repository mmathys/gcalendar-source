.class public Lnet/fortuna/ical4j/model/property/Geo;
.super Lnet/fortuna/ical4j/model/Property;
.source "Geo.java"


# static fields
.field private static final serialVersionUID:J = -0xc84e7d24cfef574L


# instance fields
.field private latitude:Ljava/math/BigDecimal;

.field private longitude:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 145
    const-string v0, "GEO"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 146
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Geo;->latitude:Ljava/math/BigDecimal;

    .line 147
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Geo;->longitude:Ljava/math/BigDecimal;

    .line 148
    return-void
.end method


# virtual methods
.method public final getLatitude()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Geo;->latitude:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getLongitude()Ljava/math/BigDecimal;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Geo;->longitude:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 229
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Geo;->getLatitude()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Geo;->getLongitude()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/16 v2, 0x3b

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/fortuna/ical4j/model/property/Geo;->latitude:Ljava/math/BigDecimal;

    .line 216
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lorg/apache/commons/lang/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 218
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lnet/fortuna/ical4j/model/property/Geo;->longitude:Ljava/math/BigDecimal;

    .line 223
    :goto_1
    return-void

    .line 213
    :cond_0
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Geo;->latitude:Ljava/math/BigDecimal;

    goto :goto_0

    .line 221
    :cond_1
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Geo;->longitude:Ljava/math/BigDecimal;

    goto :goto_1
.end method

.method public final validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 252
    return-void
.end method
