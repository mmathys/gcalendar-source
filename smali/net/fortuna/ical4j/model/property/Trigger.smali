.class public Lnet/fortuna/ical4j/model/property/Trigger;
.super Lnet/fortuna/ical4j/model/property/UtcProperty;
.source "Trigger.java"


# static fields
.field private static final serialVersionUID:J = 0x46132619c0b71e52L


# instance fields
.field private duration:Lnet/fortuna/ical4j/model/Dur;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 157
    const-string v0, "TRIGGER"

    invoke-static {}, Lnet/fortuna/ical4j/model/PropertyFactoryImpl;->getInstance()Lnet/fortuna/ical4j/model/PropertyFactoryImpl;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyFactory;)V

    .line 158
    return-void
.end method


# virtual methods
.method public final getDuration()Lnet/fortuna/ical4j/model/Dur;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Trigger;->duration:Lnet/fortuna/ical4j/model/Dur;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Trigger;->duration:Lnet/fortuna/ical4j/model/Dur;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lnet/fortuna/ical4j/model/property/Trigger;->duration:Lnet/fortuna/ical4j/model/Dur;

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/Dur;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final setDateTime(Lnet/fortuna/ical4j/model/DateTime;)V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/property/UtcProperty;->setDateTime(Lnet/fortuna/ical4j/model/DateTime;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Trigger;->duration:Lnet/fortuna/ical4j/model/Dur;

    .line 274
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Trigger;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/ParameterList;->replace(Lnet/fortuna/ical4j/model/Parameter;)Z

    .line 275
    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 249
    :try_start_0
    invoke-super {p0, p1}, Lnet/fortuna/ical4j/model/property/UtcProperty;->setValue(Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Trigger;->duration:Lnet/fortuna/ical4j/model/Dur;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    new-instance v0, Lnet/fortuna/ical4j/model/Dur;

    invoke-direct {v0, p1}, Lnet/fortuna/ical4j/model/Dur;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/property/Trigger;->duration:Lnet/fortuna/ical4j/model/Dur;

    .line 254
    invoke-super {p0, v1}, Lnet/fortuna/ical4j/model/property/UtcProperty;->setDateTime(Lnet/fortuna/ical4j/model/DateTime;)V

    goto :goto_0
.end method

.method public final validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-super {p0}, Lnet/fortuna/ical4j/model/property/UtcProperty;->validate()V

    .line 209
    const-string v0, "RELATED"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/property/Trigger;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v0

    .line 210
    const-string v1, "VALUE"

    invoke-virtual {p0, v1}, Lnet/fortuna/ical4j/model/property/Trigger;->getParameter(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Parameter;

    move-result-object v1

    .line 212
    if-nez v0, :cond_0

    sget-object v0, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    invoke-virtual {v0, v1}, Lnet/fortuna/ical4j/model/parameter/Value;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "RELATED"

    .line 215
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Trigger;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 214
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 217
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DURATION:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 218
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Trigger;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 217
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertNullOrEqual(Lnet/fortuna/ical4j/model/Parameter;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 220
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Trigger;->getDuration()Lnet/fortuna/ical4j/model/Dur;

    move-result-object v0

    if-nez v0, :cond_2

    .line 221
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Duration value not specified"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    const-string v1, "VALUE"

    .line 226
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Trigger;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 225
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 228
    invoke-static {}, Lnet/fortuna/ical4j/util/ParameterValidator;->getInstance()Lnet/fortuna/ical4j/util/ParameterValidator;

    move-result-object v0

    sget-object v1, Lnet/fortuna/ical4j/model/parameter/Value;->DATE_TIME:Lnet/fortuna/ical4j/model/parameter/Value;

    .line 229
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Trigger;->getParameters()Lnet/fortuna/ical4j/model/ParameterList;

    move-result-object v2

    .line 228
    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/ParameterValidator;->assertNullOrEqual(Lnet/fortuna/ical4j/model/Parameter;Lnet/fortuna/ical4j/model/ParameterList;)V

    .line 231
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/property/Trigger;->getDateTime()Lnet/fortuna/ical4j/model/DateTime;

    move-result-object v0

    if-nez v0, :cond_2

    .line 232
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "DATE-TIME value not specified"

    invoke-direct {v0, v1}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_2
    return-void
.end method
