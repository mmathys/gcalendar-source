.class public Lnet/fortuna/ical4j/model/component/VAlarm;
.super Lnet/fortuna/ical4j/model/component/CalendarComponent;
.source "VAlarm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;,
        Lnet/fortuna/ical4j/model/component/VAlarm$ProcedureValidator;,
        Lnet/fortuna/ical4j/model/component/VAlarm$EmailValidator;,
        Lnet/fortuna/ical4j/model/component/VAlarm$DisplayValidator;,
        Lnet/fortuna/ical4j/model/component/VAlarm$AudioValidator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x71b6d0302f1d4f6aL


# instance fields
.field private final actionValidators:Ljava/util/Map;

.field private final itipValidator:Lnet/fortuna/ical4j/model/Validator;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    const-string v0, "VALARM"

    invoke-direct {p0, v0}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;)V

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    .line 208
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->AUDIO:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VAlarm$AudioValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VAlarm$AudioValidator;-><init>(Lnet/fortuna/ical4j/model/component/VAlarm;Lnet/fortuna/ical4j/model/component/VAlarm$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->DISPLAY:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VAlarm$DisplayValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VAlarm$DisplayValidator;-><init>(Lnet/fortuna/ical4j/model/component/VAlarm;Lnet/fortuna/ical4j/model/component/VAlarm$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->EMAIL:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VAlarm$EmailValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VAlarm$EmailValidator;-><init>(Lnet/fortuna/ical4j/model/component/VAlarm;Lnet/fortuna/ical4j/model/component/VAlarm$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->PROCEDURE:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VAlarm$ProcedureValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VAlarm$ProcedureValidator;-><init>(Lnet/fortuna/ical4j/model/component/VAlarm;Lnet/fortuna/ical4j/model/component/VAlarm$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;

    invoke-direct {v0, p0, v3}, Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;-><init>(Lnet/fortuna/ical4j/model/component/VAlarm;Lnet/fortuna/ical4j/model/component/VAlarm$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->itipValidator:Lnet/fortuna/ical4j/model/Validator;

    .line 221
    return-void
.end method

.method public constructor <init>(Lnet/fortuna/ical4j/model/PropertyList;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 228
    const-string v0, "VALARM"

    invoke-direct {p0, v0, p1}, Lnet/fortuna/ical4j/model/component/CalendarComponent;-><init>(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    .line 208
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->AUDIO:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VAlarm$AudioValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VAlarm$AudioValidator;-><init>(Lnet/fortuna/ical4j/model/component/VAlarm;Lnet/fortuna/ical4j/model/component/VAlarm$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->DISPLAY:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VAlarm$DisplayValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VAlarm$DisplayValidator;-><init>(Lnet/fortuna/ical4j/model/component/VAlarm;Lnet/fortuna/ical4j/model/component/VAlarm$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->EMAIL:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VAlarm$EmailValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VAlarm$EmailValidator;-><init>(Lnet/fortuna/ical4j/model/component/VAlarm;Lnet/fortuna/ical4j/model/component/VAlarm$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    sget-object v1, Lnet/fortuna/ical4j/model/property/Action;->PROCEDURE:Lnet/fortuna/ical4j/model/property/Action;

    new-instance v2, Lnet/fortuna/ical4j/model/component/VAlarm$ProcedureValidator;

    invoke-direct {v2, p0, v3}, Lnet/fortuna/ical4j/model/component/VAlarm$ProcedureValidator;-><init>(Lnet/fortuna/ical4j/model/component/VAlarm;Lnet/fortuna/ical4j/model/component/VAlarm$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    new-instance v0, Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;

    invoke-direct {v0, p0, v3}, Lnet/fortuna/ical4j/model/component/VAlarm$ITIPValidator;-><init>(Lnet/fortuna/ical4j/model/component/VAlarm;Lnet/fortuna/ical4j/model/component/VAlarm$1;)V

    iput-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->itipValidator:Lnet/fortuna/ical4j/model/Validator;

    .line 229
    return-void
.end method


# virtual methods
.method public final getAction()Lnet/fortuna/ical4j/model/property/Action;
    .locals 1

    .prologue
    .line 418
    const-string v0, "ACTION"

    invoke-virtual {p0, v0}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperty(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Property;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/property/Action;

    return-object v0
.end method

.method protected getValidator(Lnet/fortuna/ical4j/model/property/Method;)Lnet/fortuna/ical4j/model/Validator;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->itipValidator:Lnet/fortuna/ical4j/model/Validator;

    return-object v0
.end method

.method public final validate(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "ACTION"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 259
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "TRIGGER"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 265
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DURATION"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 266
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "REPEAT"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 269
    :try_start_0
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DURATION"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 270
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "REPEAT"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V
    :try_end_0
    .catch Lnet/fortuna/ical4j/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    iget-object v0, p0, Lnet/fortuna/ical4j/model/component/VAlarm;->actionValidators:Ljava/util/Map;

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAlarm;->getAction()Lnet/fortuna/ical4j/model/property/Action;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/fortuna/ical4j/model/Validator;

    .line 282
    if-eqz v0, :cond_0

    .line 283
    invoke-interface {v0}, Lnet/fortuna/ical4j/model/Validator;->validate()V

    .line 286
    :cond_0
    if-eqz p1, :cond_1

    .line 287
    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAlarm;->validateProperties()V

    .line 289
    :cond_1
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "DURATION"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    .line 274
    invoke-static {}, Lnet/fortuna/ical4j/util/PropertyValidator;->getInstance()Lnet/fortuna/ical4j/util/PropertyValidator;

    move-result-object v0

    const-string v1, "REPEAT"

    invoke-virtual {p0}, Lnet/fortuna/ical4j/model/component/VAlarm;->getProperties()Lnet/fortuna/ical4j/model/PropertyList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/fortuna/ical4j/util/PropertyValidator;->assertOne(Ljava/lang/String;Lnet/fortuna/ical4j/model/PropertyList;)V

    goto :goto_0
.end method
