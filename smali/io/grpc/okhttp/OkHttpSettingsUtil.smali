.class Lio/grpc/okhttp/OkHttpSettingsUtil;
.super Ljava/lang/Object;
.source "OkHttpSettingsUtil.java"


# direct methods
.method public static get(Lio/grpc/okhttp/internal/framed/Settings;I)I
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/internal/framed/Settings;->get(I)I

    move-result v0

    return v0
.end method

.method public static isSet(Lio/grpc/okhttp/internal/framed/Settings;I)Z
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/internal/framed/Settings;->isSet(I)Z

    move-result v0

    return v0
.end method
