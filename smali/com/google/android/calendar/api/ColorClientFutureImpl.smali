.class public Lcom/google/android/calendar/api/ColorClientFutureImpl;
.super Lcom/google/android/calendar/api/ColorClientBase;
.source "ColorClientFutureImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/api/ColorClientFutureImpl$List;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/calendar/api/CrudApi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/CrudApi",
            "<",
            "Lcom/google/android/calendar/api/ApiColor;",
            "Lcom/google/android/calendar/api/ColorModifications;",
            "Lcom/google/android/calendar/api/ColorDescriptor;",
            "Lcom/google/android/calendar/api/ColorFilterOptions;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/api/CrudApi;

    invoke-direct {p0, v0}, Lcom/google/android/calendar/api/ColorClientBase;-><init>(Lcom/google/android/calendar/api/CrudApi;)V

    .line 66
    return-void
.end method


# virtual methods
.method public list(Lcom/google/android/calendar/api/ColorFilterOptions;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/calendar/api/ColorFilterOptions;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/calendar/api/ColorClient$ListResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/google/android/calendar/api/ColorClientFutureImpl$List;

    invoke-direct {v0, p0, p1}, Lcom/google/android/calendar/api/ColorClientFutureImpl$List;-><init>(Lcom/google/android/calendar/api/ColorClientFutureImpl;Lcom/google/android/calendar/api/ColorFilterOptions;)V

    return-object v0
.end method
