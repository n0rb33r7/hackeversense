.class public interface abstract Lcom/senseonics/api/OtwService;
.super Ljava/lang/Object;
.source "OtwService.java"


# static fields
.field public static final PATH:Ljava/lang/String; = "api/OTW/"


# virtual methods
.method public abstract checkFwUpdate()Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "api/OTW/CheckFirmwareAvailability"
    .end annotation
.end method
