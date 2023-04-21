.class public interface abstract Lcom/senseonics/api/UploadPublicUserInfoService;
.super Ljava/lang/Object;
.source "UploadPublicUserInfoService.java"


# static fields
.field public static final PATH:Ljava/lang/String; = "api/Public/"


# virtual methods
.method public abstract uploadPublicUserInfo(Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;)Lrx/Observable;
    .param p1    # Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/senseonics/model/StateModelUpload/DMSPublicUserInfo;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "api/Public/UploadPublicUserInfo"
    .end annotation
.end method
