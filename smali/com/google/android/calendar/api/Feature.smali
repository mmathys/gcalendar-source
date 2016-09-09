.class public Lcom/google/android/calendar/api/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/calendar/api/Feature$1;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/android/calendar/api/Feature;-><init>()V

    return-void
.end method

.method public static createSupported(Ljava/lang/Object;)Lcom/google/android/calendar/api/Feature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/android/calendar/api/Feature",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/google/android/calendar/api/Feature$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/api/Feature$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createUnsupported()Lcom/google/android/calendar/api/Feature;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/calendar/api/Feature",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/google/android/calendar/api/Feature;

    invoke-direct {v0}, Lcom/google/android/calendar/api/Feature;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call getValue() for Feature where isSupported()==false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isSupported()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method
