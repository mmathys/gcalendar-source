.class public interface abstract Lcom/google/calendar/v2/client/service/api/contacts/Contact;
.super Ljava/lang/Object;
.source "Contact.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/api/common/UniquelyIdentifiable",
        "<",
        "Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getKey()Lcom/google/calendar/v2/client/service/api/common/PrincipalKey;
.end method

.method public abstract getPhotoUrl(I)Ljava/lang/String;
.end method

.method public abstract getPlusProfileId()Ljava/lang/String;
.end method

.method public abstract getPrimaryEmail()Ljava/lang/String;
.end method
