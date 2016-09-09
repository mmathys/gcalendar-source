.class public Lnet/fortuna/ical4j/model/property/RequestStatus;
.super Lnet/fortuna/ical4j/model/Property;
.source "RequestStatus.java"


# static fields
.field private static final serialVersionUID:J = -0x2d6f62c03b004191L


# instance fields
.field private description:Ljava/lang/String;

.field private exData:Ljava/lang/String;

.field private statusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 85
    const-string v0, "REQUEST-STATUS"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/Property;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 86
    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getExData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->exData:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x3b

    .line 184
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 186
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RequestStatus;->getStatusCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RequestStatus;->getStatusCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    :cond_0
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RequestStatus;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 192
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RequestStatus;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    :cond_1
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RequestStatus;->getExData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 197
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RequestStatus;->getExData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ";"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->statusCode:Ljava/lang/String;

    .line 171
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->description:Ljava/lang/String;

    .line 175
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/RequestStatus;->exData:Ljava/lang/String;

    .line 178
    :cond_2
    return-void
.end method

.method public final validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "LANGUAGE"

    .line 133
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/RequestStatus;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 132
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 138
    return-void
.end method
