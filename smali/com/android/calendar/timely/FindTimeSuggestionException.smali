.class public Lcom/android/calendar/timely/FindTimeSuggestionException;
.super Ljava/lang/Exception;
.source "FindTimeSuggestionException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    return-void
.end method


# virtual methods
.method public isUserRecoverableAuthException()Z
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/calendar/timely/FindTimeSuggestionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    return v0
.end method
