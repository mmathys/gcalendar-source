.class public final Lnet/fortuna/ical4j/util/ComponentValidator;
.super Ljava/lang/Object;
.source "ComponentValidator.java"


# direct methods
.method public static assertNone(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p1, p0}, Lnet/fortuna/ical4j/model/ComponentList;->getComponent(Ljava/lang/String;)Lnet/fortuna/ical4j/model/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Component [{0}] is not applicable"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 62
    :cond_0
    return-void
.end method

.method public static assertOneOrLess(Ljava/lang/String;Lnet/fortuna/ical4j/model/ComponentList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/fortuna/ical4j/model/ValidationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-virtual {p1, p0}, Lnet/fortuna/ical4j/model/ComponentList;->getComponents(Ljava/lang/String;)Lnet/fortuna/ical4j/model/ComponentList;

    move-result-object v0

    invoke-virtual {v0}, Lnet/fortuna/ical4j/model/ComponentList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 71
    new-instance v0, Lnet/fortuna/ical4j/model/ValidationException;

    const-string v1, "Component [{0}] must only be specified once"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lnet/fortuna/ical4j/model/ValidationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 73
    :cond_0
    return-void
.end method
